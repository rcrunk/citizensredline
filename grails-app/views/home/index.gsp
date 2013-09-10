<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
    <title>Citizen's Red Line - Draw a Red Line for Politicians</title>
	</head>
	<body>
    <div>
      <h2>Cross at Your Own Political Peril!</h2>
      <div>
        <p>
          Dear Congressperson,
        </p>
        <p>
          The President has recently asked Congress for authorization to
          take military action against the government of Syria; the President has drawn
          a red line that he alleges was crossed by the Syrian government's use of chemical
          weapons. While following the U.S. rule of law seeking congressional authority
          for using military force is the proper thing to do, intervening in Syria is
          absolutely not.
        </p>
        <p>
          There are many reasons why a military strike on Syria by the United States borders on insanity:
          <ul>
            <li>An attack on Syria does not benefit or further U.S. interests.</li>
            <li>The federal government is already over $16 trillion in debt and any military action
                would only add to that enormous debt.</li>
            <li>A strike against Syria could very well be a precursor to conflict on a much larger scale.</li>
            <li>The U.S. has neither the authority nor the responsibility to be the <em>Policeman of the World.</em></li>
            <li>Over 100,000 Syrians have died so far in this conflict, which encompasses both pro and anti
                 government factions; a strike on Syria would only make a bad humanitarian crisis worse.</li>
            <li>The very terrorists that we have been fighting for many years are the ones that benefit
            the most by U.S. intervention in Syria.</li>
            <li>The U.S. will suffer irreparable harm to its interests and credibility if it is learned that
            the Syrian government were <em>not</em> behind these chemical attacks. Iraq is still fresh in the
            world's memory.</li>
          </ul>
        </p>
        <p>
          But, I expect that I am not telling you nothing that you don't already know. The question is: <u><em>What are
          <strong>you</strong> going to do?</em></u> Are you going to side with the bankers, the military/security complex,
          and AIPAC, or are you going to side with the interests of the American People?
        </p>
        <p>
          Choose carefully, because here is the <span class="redline">red line</span> I am drawing for you:
          If you vote for the U.S. to intervene in Syria, it is evident that you are neither deserving or
          qualified to hold public office, and I will use whatever legal means at my disposal to insure that
          this will be your last term.
        </p>
      </div>
      <row><div id="line" class="col-md-12 line undrawn"></div></row>
      <g:if test="${cookie(name:'tally')}">
        <div id="count"/>
        <script type="text/javascript">
          $("#line").removeClass("undrawn")
          $("#line").animate({ width: "100%" }, 1000, showTally)
          function showTally() {
            var tally = "${cookie(name:'tally')}"
            var delta = ${nowDrawn} - parseInt(tally)
            $("#count").html("<h3>You were the "+tally+" citizen to draw a red line; there have been "+delta+" since then.</h3>")
          }
        </script>
      </g:if>
      <g:else>
        <div id="count">
          <g:formRemote url="[action: 'draw']" name="redline" onSuccess="handleResponse(data)">
            <g:submitButton id="submit" name="submit" value="Draw the Line" class="btn btn-lg btn-danger submit"/>
          </g:formRemote>
        </div>
      </g:else>
    </div>
    <script>
      function handleResponse(data) {
        if (data.status) {
          switch (data.status) {
            case "success":
              $("#line").removeClass("undrawn")
              $("#line").animate({ width: "100%" }, 1000, showMessage)
              setCookie("tally", data.message, 129600)
              break;
            case "failure":
              break
          }
        }

        function showMessage() {
          $("#count").html("<h3>You are the "+data.message+" person to draw a citizen's red line!</h3>")
        }
      }

      function setCookie(name, value, expirationMinutes) {
        var expirationDate = null;
        if (expirationMinutes) {
          expirationDate = new Date();
          expirationDate.setMinutes(expirationDate.getMinutes() + expirationMinutes);
        }

        var cookieValue = escape(value)
            + ((expirationDate == null) ? "" : "; expires=" + expirationDate.toUTCString());
        document.cookie = name + "=" + cookieValue;
      }

      function getCookie(name) {
        var result = null;
        var cookies = document.cookie.split(";");
        for (var i = 0; i < cookies.length; ++i) {
          var cookie = cookies[i];
          var pivot = cookie.indexOf("=");
          var cookieName = cookie.substr(0, pivot).replace(/^\s+|\s+$/g,"");

          if (cookieName == name) {
            result = unescape(cookie.substr(pivot+1));
          }
        }

        return result;
      }

      function deleteCookie(name) {
        this.setCookie(name, 0, -45);
      }
    </script>
  </body>
</html>
