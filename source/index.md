---
layout: default
---

{% include about-gslug.md %}

<div class="post-list">
    {% for post in site.posts %}
    <article class="post-preview">

      <p class="post-meta">
        Posted on {{ post.date | date: "%B %-d, %Y" }}
      </p>
 
      <a href="{{ post.url | prepend: site.baseurl }}">
  	    <h1 class="post-title">{{ post.title }}</h1>
      </a>
  
      {% if post.show_synopsis %}
        <div class="post-entry-container">
          <div class="post-entry">
    		{{ post.content | strip_html | xml_escape | truncatewords: site.excerpt_length }}
    		<a href="{{ post.url | prepend: site.baseurl }}" class="post-read-more">[Read&nbsp;More]</a>
          </div>
        </div>
      {% endif %}
  
    </article>
    {% endfor %}

  <p class="rss-subscribe">subscribe <a href="{{ "/feed.xml" | prepend: site.baseurl }}">via RSS</a></p>

</div>

