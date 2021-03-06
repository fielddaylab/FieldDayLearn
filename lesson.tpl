<!DOCTYPE html>
<html>
<head>
  <title>Field Day Courses: {{title}}</title>
  <meta charset="utf-8">
  <link rel="stylesheet" type="text/css" href="css/styles.css">
  <script type="text/javascript" src="lesson.js"></script>
</head>
<body class="fdl-page-lesson fdl-tab-about">

{{{navbar}}}
<div class="fdl-video-wrapper" style="background-image: url('{{splash-image-blur}}');">
  <div class="fdl-video-section">
    <div class="fdl-video-headers">
      <h1>{{title}}</h1>
      <h2>{{count-lessons}}</h2>
    </div>
    <div class="fdl-video-player">
      <div class="fdl-video-container">
        <iframe id="fdl-video-iframe" allowfullscreen></iframe>
      </div>
      <ol class="fdl-video-list" start="0">
        {{#videos}}
          <div class="fdl-video-selector-box">
            <a href="#" class="fdl-video-selector" onclick="selectVideo(this); event.preventDefault();" data-video-url="{{url}}" data-video-index="{{index}}">
              <li>
                {{name}}
              </li>
            </a>
          </div>
        {{/videos}}
      </ol>
    </div>
  </div>
</div>

<div class="fdl-content-nav">
  <div class="fdl-content-nav-left">
    <a href="#" onclick="aboutTab(); event.preventDefault();" class="fdl-content-nav-about">ABOUT</a>
    {{#forum}}
      <a href="#" onclick="forumTab(); event.preventDefault();" class="fdl-content-nav-forum">COURSE FORUM</a>
    {{/forum}}
  </div>
  <div class="fdl-content-nav-right">
    <a class="fdl-content-nav-share" href="#" onClick="openModal(); event.preventDefault();">
      <img class="fdl-content-nav-share-icon" src="assets/share.png">
      SHARE
    </a>
  </div>
</div>

<div class="fdl-content fdl-content-about">

  <div class="fdl-columns">

    <div class="fdl-column-content">
      <h2 id="about-lesson" class="about-lesson">About this Class</h2>
      <div class="fdl-video-descriptions">
        {{#videos}}
          <div class="fdl-video-description">
            {{{description}}}
          </div>
        {{/videos}}
      </div>
    </div>

    <div class="fdl-column-sidebar">

      <h2>Author</h2>
      <div class="fdl-author">
        {{#author}}
          <div class="fdl-author-photo" style="background-image: url({{photo}});"></div>
          <div class="fdl-author-info">
            <h3>{{name}}</h3>
            <p class="small">{{job}}</p>
            <p class="fdl-author-links">
              {{#links}}
                <a href="{{url}}">{{name}}</a>
              {{/links}}
            </p>
          </div>
        {{/author}}
      </div>

      <hr>

      <h2>Lesson Resources</h2>
      <ul class="fdl-resources">
        {{#resources}}
          <li>
            <a href="{{url}}">
              <span class="fdl-resource-{{icon}}"></span>
              {{name}}
            </a>
          </li>
        {{/resources}}
      </ul>

      <hr>

      <p class="fdl-tags">
        {{#tags}}
          <a href="tag/{{tag}}">
            <span class="fdl-tag">{{tag}}</span>
          </a>
        {{/tags}}
      </p>

    </div>

  </div>

</div>

<iframe class="fdl-forum fdl-content-forum" src="{{forum}}"></iframe>

<div class="fdl-courses-header">
  <img src="assets/cubes.png" alt="">
  <h1>RELATED COURSES</h1>
</div>

<div class="fdl-courses-cards">
  {{#related}}
    <a href="{{url}}">
      <div class="fdl-courses-card">
        <div class="fdl-courses-card-img" style="background-image: url('{{#lesson}}{{splash-image}}{{/lesson}}');">
          <div class="fdl-courses-card-arrow-box">
            <img class="fdl-courses-card-arrow" src="assets/course-arrow.png">
          </div>
        </div>
        <h2 class="fdl-courses-card-title">
          {{#lesson}}
            {{title}}
          {{/lesson}}
        </h2>
      </div>
    </a>
  {{/related}}
</div>

{{{footer}}}

<div id="fdl-modal-share" class="fdl-modal-off fdl-modal-url" onclick="closeModal(); event.preventDefault();">
  <div class="fdl-modal-share-box" onclick="event.stopPropagation();">
    <a href="#" onclick="closeModal(); event.preventDefault();">
      <img src="assets/modal-x.png" class="fdl-modal-share-close">
    </a>
    <div class="fdl-share-tabs">
      <a href="#" class="fdl-share-tab-url" onclick="modalURL(); event.preventDefault();">
        <img class="fdl-share-tab-icon" src="assets/chain-link.png">
        SHARE URL
      </a>
      <a href="#" class="fdl-share-tab-email" onclick="modalEmail(); event.preventDefault();">
        <img class="fdl-share-tab-icon" src="assets/email.png">
        SEND EMAIL
      </a>
    </div>
    <div class="fdl-share-content fdl-share-url-content">
      <h1>Course sharing URL</h1>
      <p>Copy and paste the link below into emails, chats, or browsers.</p>
      <div class="fdl-share-link-row">
        <div class="fdl-share-link">
          <span>https://fielddaylab.wisc.edu/courses/{{url}}</span>
          <a class="fdl-share-qr-button" href="#" onclick="event.preventDefault();"><img src="assets/qr-code.png"></a>
        </div>
        <a class="fdl-share-link-copy" href="#" onclick="event.preventDefault();">COPY</a>
      </div>
      <p>
        <a class="fdl-share-social" href="#" onclick="event.preventDefault();">
          <img src="assets/twitter.png">
        </a>
        <a class="fdl-share-social" href="#" onclick="event.preventDefault();">
          <img src="assets/facebook.png">
        </a>
      </p>
    </div>
    <div class="fdl-share-content fdl-share-email-content">
      <h1>Share course in email</h1>
      <p>Invite someone to check out this course!</p>
      <div class="fdl-share-email-body">
        {{{email-body}}}
      </div>
      <p>
        <a class="fdl-share-email-send" href="{{email-link}}">SEND</a>
      </p>
    </div>
  </div>
</div>

</body>
</html>
