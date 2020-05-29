<?xml version="1.0" encoding="utf-8"?>
<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified" xmlns:xs="http://www.w3.org/2001/XMLSchema">
  <xs:element name="body">
    <xs:complexType>
      <xs:sequence>
        <xs:element name="cook">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="product_type">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element name="id_product" type="xs:string" />
                    <xs:element name="product_name" type="xs:string" />
                    <xs:element name="quantity_of_prepared_food" type="xs:unsignedByte" />
                    <xs:element name="date_of_preparation" type="xs:string" />
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
              <xs:element name="ingredients">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element name="the_name_of_the_ingredient" type="xs:string" />
                    <xs:element name="weight" type="xs:unsignedByte" />
                    <xs:element name="price" type="xs:unsignedByte" />
                    <xs:element name="shelf_life" type="xs:string" />
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
        <xs:element name="manager">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="product">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element name="id_product" type="xs:string" />
                    <xs:element name="product_name" type="xs:string" />
                    <xs:element name="price1" type="xs:unsignedByte" />
                    <xs:element name="weight1" type="xs:unsignedByte" />
                    <xs:element name="date_of_manufacture" type="xs:string" />
                    <xs:element name="category" type="xs:string" />
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
              <xs:element name="price_list">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element name="id_product" type="xs:string" />
                    <xs:element name="weight1" type="xs:unsignedByte" />
                    <xs:element name="price1" type="xs:unsignedByte" />
                    <xs:element name="being_in_demand" type="xs:unsignedByte" />
                    <xs:element name="product_name" type="xs:string" />
                    <xs:element name="composition" type="xs:string" />
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
        <xs:element name="cashier">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="implementation">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element name="id_sales" type="xs:string" />
                    <xs:element name="date_of_sale" type="xs:string" />
                    <xs:element name="product_name" type="xs:string" />
                    <xs:element name="quantity" type="xs:unsignedByte" />
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:sequence>
    </xs:complexType>
  </xs:element>
</xs:schema>