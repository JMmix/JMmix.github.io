<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
        <style>
          .flex{
          display: flex;
          flex-wrap: wrap;
          justify-content: center;
          align-items: center;
          border-radius: 25px;
          }
          .card {
            /* Add shadows to create the "card" effect */

            transition: 0.3s;
            background-color: #eaeaea;
            width: 15%;
            margin: 10px;

          }
          .card:hover {
            box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
              background-color: white;
                  transform: scale(1.1);
          }

          .container {
            padding: 2px 16px;
          }
          .container>img {
            width: 100%;
            height: 100px;
          }
        </style>
<div class="flex">
        <xsl:for-each select="concesionario/coche">
   <xsl:if test="marca='Opel'">
          <div class="card">
            <div class="container">
              <img src="{foto/@src}"/>
              <h4>
                <b><xsl:value-of select="marca"/></b>
              </h4>
              <p><xsl:value-of select="modelo"/></p>
              <h4><xsl:value-of select="precio"/></h4>
            </div>
          </div>
      </xsl:if>
        </xsl:for-each>
        </div>
  </xsl:template>


</xsl:stylesheet>
