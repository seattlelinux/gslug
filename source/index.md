---
layout: default
---

{% include about-gslug.md %}

<div >
  {% if site.posts.size > 0 %}
  <h2 class="post-list-heading">{{ page.list_title | default: "Posts" }}</h2>

  <ul class="post-list">
    {% for post in site.posts %}
      <li>
        <span class="post-meta">{{ post.date | date: "%b %-d, %Y" }}</span>

        <h3>
          <a class="post-link" href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a>
        </h3>
      </li>
    {% endfor %}
  </ul>

  <p class="rss-subscribe">subscribe <a href="{{ "/feed.xml" | prepend: site.baseurl }}">via RSS</a></p>

  {% endif %}

</div>

