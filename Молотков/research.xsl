<?xml version="1.0" encoding="UTF-8"?>
<html xsl:version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<body style="font-family: Arial; font-size: 12pt; background-color: #EEE">
      <div style="background-color: teal; color: white; padding: 4px">	
         <span style="font-weight: bold">Препараты</span> 
      </div>
	  <xsl:for-each select="Research_Institute/Drug">
      <div style="margin-left: 20px; margin-bottom: 1em; font-size: 10pt">
         <p>
			<span style="font-weight: bold"> ID: </span><xsl:for-each select="Drug_ID"><xsl:value-of select="@id"/></xsl:for-each>
			<span style="font-weight: bold"> Тип: </span><xsl:for-each select="Type_ID_Ref"><xsl:value-of select="@idref"/></xsl:for-each>
			<span style="font-weight: bold"> Кол-во: </span><xsl:value-of select="Stock_Quantity"/>
			<span style="font-weight: bold"> Склад: </span><xsl:for-each select="Storage_ID_Ref"><xsl:value-of select="@idref"/></xsl:for-each>
            <span style="font-weight: bold"> Имя: </span><xsl:value-of select="Drug_Name"/>
			<span style="font-weight: bold"> Описание: </span><xsl:value-of select="Drug_Description"/>
         </p>
      </div>
		</xsl:for-each>
		
		<div style="background-color: teal; color: white; padding: 4px">	
         <span style="font-weight: bold">Типы препаратов</span> 
      </div>
	  <xsl:for-each select="Research_Institute/Drug_Type">
      <div style="margin-left: 20px; margin-bottom: 1em; font-size: 10pt">
         <p>
			<span style="font-weight: bold"> ID: </span><xsl:for-each select="Type_ID"><xsl:value-of select="@id"/></xsl:for-each>
            <span style="font-weight: bold"> Имя: </span><xsl:value-of select="Type_Name"/>
         </p>
      </div>
		</xsl:for-each>
		
		<div style="background-color: teal; color: white; padding: 4px">	
         <span style="font-weight: bold">Склады</span> 
      </div>
	  <xsl:for-each select="Research_Institute/Storage">
      <div style="margin-left: 20px; margin-bottom: 1em; font-size: 10pt">
         <p>
			<span style="font-weight: bold"> ID: </span><xsl:for-each select="Storage_ID"><xsl:value-of select="@id"/></xsl:for-each>
            <span style="font-weight: bold"> Тип препаратов: </span><xsl:for-each select="Type_ID_Ref"><xsl:value-of select="@idref"/></xsl:for-each>
         </p>
      </div>
		</xsl:for-each>
		
		<div style="background-color: teal; color: white; padding: 4px">	
         <span style="font-weight: bold">Поставки</span> 
      </div>
	  <xsl:for-each select="Research_Institute/Supply">
      <div style="margin-left: 20px; margin-bottom: 1em; font-size: 10pt">
         <p>
			<span style="font-weight: bold"> ID: </span><xsl:for-each select="Supply_ID"><xsl:value-of select="@id"/></xsl:for-each>
            <span style="font-weight: bold"> ID склада: </span><xsl:for-each select="Storage_ID_Ref"><xsl:value-of select="@idref"/></xsl:for-each>
			<span style="font-weight: bold"> Дата получения: </span><xsl:value-of select="Receiving_Date"/>
         </p>
      </div>
		</xsl:for-each>
		
		<div style="background-color: teal; color: white; padding: 4px">	
         <span style="font-weight: bold">Поставки препаратов</span> 
      </div>
	  <xsl:for-each select="Research_Institute/Drug_Supply">
      <div style="margin-left: 20px; margin-bottom: 1em; font-size: 10pt">
         <p>
			<span style="font-weight: bold"> ID поставки: </span><xsl:for-each select="Supply_ID_Ref"><xsl:value-of select="@idref"/></xsl:for-each>
            <span style="font-weight: bold"> ID склада: </span><xsl:for-each select="Type_ID_Ref"><xsl:value-of select="@idref"/></xsl:for-each>
			<span style="font-weight: bold"> Кол-во: </span><xsl:value-of select="Drug_Quantity_Supply"/>
         </p>
      </div>
		</xsl:for-each>
		
		<div style="background-color: teal; color: white; padding: 4px">	
         <span style="font-weight: bold">Выдачи препаратов</span> 
      </div>
	  <xsl:for-each select="Research_Institute/Drug_Delivery">
      <div style="margin-left: 20px; margin-bottom: 1em; font-size: 10pt">
         <p>
			<span style="font-weight: bold"> ID заказа: </span><xsl:for-each select="Order_ID_Ref"><xsl:value-of select="@idref"/></xsl:for-each>
            <span style="font-weight: bold"> ID склада: </span><xsl:for-each select="Drug_ID_Ref"><xsl:value-of select="@idref"/></xsl:for-each>
			<span style="font-weight: bold"> Кол-во: </span><xsl:value-of select="Drug_Quantity_Delivery"/>
         </p>
      </div>
		</xsl:for-each>
		
		<div style="background-color: teal; color: white; padding: 4px">	
         <span style="font-weight: bold">Заказы</span> 
      </div>
	  <xsl:for-each select="Research_Institute/Order">
      <div style="margin-left: 20px; margin-bottom: 1em; font-size: 10pt">
         <p>
			<span style="font-weight: bold"> ID заказа: </span><xsl:for-each select="Order_ID"><xsl:value-of select="@id"/></xsl:for-each>
            <span style="font-weight: bold"> Номер работы: </span><xsl:for-each select="Research_ID_Ref"><xsl:value-of select="@idref"/></xsl:for-each>
			<span style="font-weight: bold"> Дата выдачи: </span><xsl:value-of select="Issue_Date"/>
         </p>
      </div>
		</xsl:for-each>
		
		<div style="background-color: teal; color: white; padding: 4px">	
         <span style="font-weight: bold">Работы</span> 
      </div>
	  <xsl:for-each select="Research_Institute/Research">
      <div style="margin-left: 20px; margin-bottom: 1em; font-size: 10pt">
         <p>
			<span style="font-weight: bold"> Номер работы: </span><xsl:for-each select="Research_ID"><xsl:value-of select="@id"/></xsl:for-each>
            <span style="font-weight: bold"> Номер лаборатории: </span><xsl:for-each select="Laboratory_ID_Ref"><xsl:value-of select="@idref"/></xsl:for-each>
			<span style="font-weight: bold"> Название работы: </span><xsl:value-of select="Research_Name"/>
			<span style="font-weight: bold"> Описание работы: </span><xsl:value-of select="Research_Description"/>
			<span style="font-weight: bold"> Дата начала: </span><xsl:value-of select="Research_Date_Begin"/>
			<span style="font-weight: bold"> Дата окончания: </span><xsl:value-of select="Research_Date_End"/>
			<span style="font-weight: bold"> Прогресс: </span><xsl:value-of select="Research_Progress"/>
         </p>
      </div>
		</xsl:for-each>
		
		<div style="background-color: teal; color: white; padding: 4px">	
         <span style="font-weight: bold">Лаборатории</span> 
      </div>
	  <xsl:for-each select="Research_Institute/Laboratory">
      <div style="margin-left: 20px; margin-bottom: 1em; font-size: 10pt">
         <p>
			<span style="font-weight: bold"> Номер лаборатории: </span><xsl:for-each select="Laboratory_ID"><xsl:value-of select="@id"/></xsl:for-each>
         </p>
      </div>
		</xsl:for-each>
</body>
</html>