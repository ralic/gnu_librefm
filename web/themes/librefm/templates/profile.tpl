{include file='header.tpl'}

<h2>{$user}'s profile</h2>
<dl class='user vcard'>
    <dt class='fn'>
        <span class='family-name'>{$fullname}</span>
        (<span class='nickname'>{$user}</span>)
    </dt>
    <dd class='avatar'>
        <!-- Avatar placeholder  -->
        <img src='{$avatar}' class='photo'/>
    </dd>
    <dd class='org'>
        <a href='{$homepage}' rel='bookmark' class='url'>{$homepage}</a>
    </dd>
    <dd class='adr'>
        <span class='locality'>{$location}</span>
    </dd>
    <dd class='bio'>
        <p>{$bio}</p>
    </dd>
</dl>
<h3>Latest 10 Gobbles:</h3>
{section name=i loop=$scrobbles}
    {if $smarty.capture.artist_last <> $scrobbles[i].artist}
        {if $i > 0}
        </dl>
        {/if}
        <dl class='gobbles'>
            <dt class='artist'>
                <a href="artist.php?artist={$scrobbles[i].artist|stripslashes|urlencode}">{$scrobbles[i].artist}</a>
            </dt>
    {/if}
      <dd class='gobble'><span class='track-name'>{$scrobbles[i].track|stripslashes}</span><small>{$scrobbles[i].timehuman}</small></dd>
    {capture name=artist_last}{$scrobbles[i].artist}{/capture}
{/section}
    </dl>


{include file='footer.tpl'}
