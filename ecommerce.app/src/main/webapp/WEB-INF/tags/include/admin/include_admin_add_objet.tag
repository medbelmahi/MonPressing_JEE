<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="include" tagdir="/WEB-INF/tags/include" %>

<div class="panel mb25 mt5">
    <div class="panel-heading">
        <span class="panel-title"> Ajouter Nouveau Objet</span>
        <ul class="nav panel-tabs-border panel-tabs">
            <li class="active">
                <a href="#tab1_1" data-toggle="tab">G�n�ral</a>
            </li>
            <li>
                <a href="#tab1_2" data-toggle="tab">Description</a>
            </li>
        </ul>
    </div>
    <div class="panel-body p20 pb10">
        <spring:url value="/admin/dashboard/ecommerce/product/add" var="addProductActionUrl" />
        <form:form id="add-Product" action="${addProductActionUrl}" modelAttribute="productForm" method="post" >
        <div class="tab-content pn br-n admin-form">

            <div id="tab1_1" class="tab-pane active">

                <div class="section row mbn">
                    <div class="col-md-4">
                        <div class="fileupload fileupload-new admin-form" data-provides="fileupload">
                            <div class="fileupload-preview thumbnail mb20">
                                <img data-src="holder.js/100%x140" alt="holder">
                            </div>
                            <div class="row">
                                <div class="col-xs-7 pr5">
                                    <input type="text" name="name2" id="name2" class="text-center event-name gui-input br-light bg-light" placeholder="Img Keywords">
                                    <label for="name2" class="field-icon"></label>
                                </div>
                                <div class="col-xs-5">
                                                        <span class="button btn-system btn-file btn-block">
                                                            <span class="fileupload-new">Choisir</span>
                                                        <span class="fileupload-exists">Changer</span>
                                                        <input type="file">
                                                        </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8 pl15">
                        <div class="section mb10">
                            <label for="name2" class="field prepend-icon">
                                <form:input type="text" path="name" id="name2" class="event-name gui-input br-light light" placeholder="Nom de l'objet" />
                                <label for="name2" class="field-icon"><i class="fa fa-tag"></i>
                                    <form:errors path="name" class="control-label" />
                                </label>
                            </label>
                        </div>
                        <div class="section mb10">
                            <label class="field prepend-icon">
                                <form:textarea style="height: 160px;" class="gui-textarea br-light bg-light" id="comment" path="description" placeholder="Product Description"></form:textarea>
                                <label for="comment" class="field-icon"><i class="fa fa-comments"></i>
                                </label>
                                                    <span class="input-footer hidden">
                                                            <strong>Hint:</strong>Don't be negative or off topic! just be awesome...</span>
                            </label>
                        </div>
                    </div>
                </div>


            </div>
            <div id="tab1_2" class="tab-pane">

                <div class="section row">
                    <div class="col-md-6">
                        <label for="product-category" class="field select">
                            <select id="product-category" name="product-category">
                                <option value="0" selected="selected">Product Category...</option>
                                <option value="1">Software</option>
                                <option value="2">Computers</option>
                                <option value="3">Gadgets</option>
                                <option value="4">Clothing</option>
                            </select>
                            <i class="arrow double"></i>
                        </label>
                    </div>
                    <!-- end section -->

                    <div class="col-md-6">
                        <label class="field select">
                            <select id="product-status" name="product-status">
                                <option value="0" selected="selected">Product Availability</option>
                                <option value="1">Available</option>
                                <option value="2">Unavailable</option>
                                <option value="3">Discontinued</option>
                                <option value="4">Out of Stock</option>
                            </select>
                            <i class="arrow double"></i>
                        </label>
                    </div>
                    <!-- end section -->

                </div>
                <!-- end section row section -->

                <div class="section row">
                    <div class="col-md-4">
                        <label for="product-price" class="field prepend-icon">
                            <input type="text" name="product-price" id="product-price" class="gui-input" placeholder="Product Price...">
                            <label for="product-price" class="field-icon"><i class="fa fa-usd"></i>
                            </label>
                        </label>
                    </div>
                    <!-- end section -->

                    <div class="col-md-4">
                        <label for="product-vendor" class="field prepend-icon">
                            <input type="text" name="product-vendor" id="product-vendor" class="gui-input" placeholder="Vendor Source...">
                            <label for="product-vendor" class="field-icon"><i class="fa fa-shopping-cart"></i>
                            </label>
                        </label>
                    </div>
                    <!-- end section -->

                    <div class="col-md-4">
                        <label for="product-sku" class="field prepend-icon">
                            <input type="text" name="product-sku" id="product-sku" class="gui-input" placeholder="Product SKU...">
                            <label for="product-sku" class="field-icon"><i class="fa fa-barcode"></i>
                            </label>
                        </label>
                    </div>
                    <!-- end section -->

                </div>
                <!-- end section row section -->

                <div class="section">
                    <input id="tagsinput" type="text" value="Software, Adobe, Photoshop, Editor, Commercial">
                </div>
                <!-- end section row section -->

                <hr class="short alt">

                <div class="section row mbn">
                    <div class="col-sm-8">
                        <label class="field option mt10">
                            <input type="checkbox" name="info" checked>
                            <span class="checkbox"></span>Save Customer
                            <em class="small-text text-muted">- A Random Unique ID will be generated</em>
                        </label>
                    </div>
                    <div class="col-sm-4">
                        <p class="text-right">
                            <button class="btn btn-primary" type="button">Save Order</button>
                        </p>
                    </div>
                </div>
                <!-- end section -->

            </div>
            <div id="tab1_3" class="tab-pane">

                <div class="section">
                    <label for="lastaddr" class="field prepend-icon">
                        <input type="text" name="lastaddr" id="lastaddr" class="gui-input" placeholder="Street address 2">
                        <label for="lastaddr" class="field-icon"><i class="fa fa-map-marker"></i>
                        </label>
                    </label>
                </div>
                <!-- end section -->

                <div class="section">
                    <label class="field select">
                        <select id="location" name="location">
                            <option value="">Select country...</option>
                            <option value="AL">Albania</option>
                            <option value="DZ">Algeria</option>
                            <option value="AD">Andorra</option>
                            <option value="AO">Angola</option>
                            <option value="AI">Anguilla</option>
                            <option value="AG">Antigua and Barbuda</option>
                            <option value="AR">Argentina</option>
                            <option value="AM">Armenia</option>
                            <option value="AW">Aruba</option>
                            <option value="AU">Australia</option>
                            <option value="AT">Austria</option>
                            <option value="AZ">Azerbaijan Republic</option>
                            <option value="BS">Bahamas</option>
                            <option value="BH">Bahrain</option>
                            <option value="BB">Barbados</option>
                            <option value="BE">Belgium</option>
                            <option value="BZ">Belize</option>
                            <option value="BJ">Benin</option>
                            <option value="BM">Bermuda</option>
                            <option value="BT">Bhutan</option>
                            <option value="BO">Bolivia</option>
                            <option value="BA">Bosnia and Herzegovina</option>
                            <option value="BW">Botswana</option>
                            <option value="BR">Brazil</option>
                            <option value="BN">Brunei</option>
                            <option value="BG">Bulgaria</option>
                            <option value="BF">Burkina Faso</option>
                            <option value="BI">Burundi</option>
                            <option value="KH">Cambodia</option>
                            <option value="CA">Canada</option>
                            <option value="CV">Cape Verde</option>
                            <option value="KY">Cayman Islands</option>
                            <option value="TD">Chad</option>
                            <option value="CL">Chile</option>
                            <option value="C2">China Worldwide</option>
                            <option value="CO">Colombia</option>
                            <option value="KM">Comoros</option>
                            <option value="CK">Cook Islands</option>
                            <option value="CR">Costa Rica</option>
                            <option value="HR">Croatia</option>
                            <option value="CY">Cyprus</option>
                            <option value="CZ">Czech Republic</option>
                            <option value="CD">Democratic Republic of the Congo</option>
                            <option value="DK">Denmark</option>
                            <option value="DJ">Djibouti</option>
                            <option value="DM">Dominica</option>
                            <option value="DO">Dominican Republic</option>
                            <option value="EC">Ecuador</option>
                            <option value="EG">Egypt</option>
                            <option value="SV">El Salvador</option>
                            <option value="ER">Eritrea</option>
                            <option value="EE">Estonia</option>
                            <option value="ET">Ethiopia</option>
                            <option value="FK">Falkland Islands</option>
                            <option value="FO">Faroe Islands</option>
                            <option value="FJ">Fiji</option>
                            <option value="FI">Finland</option>
                            <option value="FR">France</option>
                            <option value="GF">French Guiana</option>
                            <option value="PF">French Polynesia</option>
                            <option value="GA">Gabon Republic</option>
                            <option value="GM">Gambia</option>
                            <option value="GE">Georgia</option>
                            <option value="DE">Germany</option>
                            <option value="GI">Gibraltar</option>
                            <option value="GR">Greece</option>
                            <option value="GL">Greenland</option>
                            <option value="GD">Grenada</option>
                            <option value="GP">Guadeloupe</option>
                            <option value="GT">Guatemala</option>
                            <option value="GN">Guinea</option>
                            <option value="GW">Guinea Bissau</option>
                            <option value="GY">Guyana</option>
                            <option value="HN">Honduras</option>
                            <option value="HK">Hong Kong</option>
                            <option value="HU">Hungary</option>
                            <option value="IS">Iceland</option>
                            <option value="IN">India</option>
                            <option value="ID">Indonesia</option>
                            <option value="IE">Ireland</option>
                            <option value="IL">Israel</option>
                            <option value="IT">Italy</option>
                            <option value="JM">Jamaica</option>
                            <option value="JP">Japan</option>
                            <option value="JO">Jordan</option>
                            <option value="KZ">Kazakhstan</option>
                            <option value="KE">Kenya</option>
                            <option value="KI">Kiribati</option>
                            <option value="KW">Kuwait</option>
                            <option value="KG">Kyrgyzstan</option>
                            <option value="LA">Laos</option>
                            <option value="LV">Latvia</option>
                            <option value="LS">Lesotho</option>
                            <option value="LI">Liechtenstein</option>
                            <option value="LT">Lithuania</option>
                            <option value="LU">Luxembourg</option>
                            <option value="MG">Madagascar</option>
                            <option value="MW">Malawi</option>
                            <option value="MY">Malaysia</option>
                            <option value="MV">Maldives</option>
                            <option value="ML">Mali</option>
                            <option value="MT">Malta</option>
                            <option value="MH">Marshall Islands</option>
                            <option value="MQ">Martinique</option>
                            <option value="MR">Mauritania</option>
                            <option value="MU">Mauritius</option>
                            <option value="YT">Mayotte</option>
                            <option value="MX">Mexico</option>
                            <option value="FM">Micronesia</option>
                            <option value="MN">Mongolia</option>
                            <option value="MS">Montserrat</option>
                            <option value="MA">Morocco</option>
                            <option value="MZ">Mozambique</option>
                            <option value="NA">Namibia</option>
                            <option value="NR">Nauru</option>
                            <option value="NP">Nepal</option>
                            <option value="NL">Netherlands</option>
                            <option value="AN">Netherlands Antilles</option>
                            <option value="NC">New Caledonia</option>
                            <option value="NZ">New Zealand</option>
                            <option value="NI">Nicaragua</option>
                            <option value="NE">Niger</option>
                            <option value="NU">Niue</option>
                            <option value="NF">Norfolk Island</option>
                            <option value="NO">Norway</option>
                            <option value="OM">Oman</option>
                            <option value="PW">Palau</option>
                            <option value="PA">Panama</option>
                            <option value="PG">Papua New Guinea</option>
                            <option value="PE">Peru</option>
                            <option value="PH">Philippines</option>
                            <option value="PN">Pitcairn Islands</option>
                            <option value="PL">Poland</option>
                            <option value="PT">Portugal</option>
                            <option value="QA">Qatar</option>
                            <option value="CG">Republic of the Congo</option>
                            <option value="RE">Reunion</option>
                            <option value="RO">Romania</option>
                            <option value="RU">Russia</option>
                            <option value="RW">Rwanda</option>
                            <option value="KN">Saint Kitts and Nevis Anguilla</option>
                            <option value="PM">Saint Pierre and Miquelon</option>
                            <option value="VC">Saint Vincent and Grenadines</option>
                            <option value="WS">Samoa</option>
                            <option value="SM">San Marino</option>
                            <option value="ST">S�o Tom� and Pr�ncipe</option>
                            <option value="SA">Saudi Arabia</option>
                            <option value="SN">Senegal</option>
                            <option value="RS">Serbia</option>
                            <option value="SC">Seychelles</option>
                            <option value="SL">Sierra Leone</option>
                            <option value="SG">Singapore</option>
                            <option value="SK">Slovakia</option>
                            <option value="SI">Slovenia</option>
                            <option value="SB">Solomon Islands</option>
                            <option value="SO">Somalia</option>
                            <option value="ZA">South Africa</option>
                            <option value="KR">South Korea</option>
                            <option value="ES">Spain</option>
                            <option value="LK">Sri Lanka</option>
                            <option value="SH">St. Helena</option>
                            <option value="LC">St. Lucia</option>
                            <option value="SR">Suriname</option>
                            <option value="SJ">Svalbard and Jan Mayen Islands</option>
                            <option value="SZ">Swaziland</option>
                            <option value="SE">Sweden</option>
                            <option value="CH">Switzerland</option>
                            <option value="TW">Taiwan</option>
                            <option value="TJ">Tajikistan</option>
                            <option value="TZ">Tanzania</option>
                            <option value="TH">Thailand</option>
                            <option value="TG">Togo</option>
                            <option value="TO">Tonga</option>
                            <option value="TT">Trinidad and Tobago</option>
                            <option value="TN">Tunisia</option>
                            <option value="TR">Turkey</option>
                            <option value="TM">Turkmenistan</option>
                            <option value="TC">Turks and Caicos Islands</option>
                            <option value="TV">Tuvalu</option>
                            <option value="UG">Uganda</option>
                            <option value="UA">Ukraine</option>
                            <option value="AE">United Arab Emirates</option>
                            <option value="GB">United Kingdom</option>
                            <option value="US">United States</option>
                            <option value="UY">Uruguay</option>
                            <option value="VU">Vanuatu</option>
                            <option value="VA">Vatican City State</option>
                            <option value="VE">Venezuela</option>
                            <option value="VN">Vietnam</option>
                            <option value="VG">Virgin Islands (British)</option>
                            <option value="WF">Wallis and Futuna Islands</option>
                            <option value="YE">Yemen</option>
                            <option value="ZM">Zambia</option>
                        </select>
                        <i class="arrow double"></i>
                    </label>
                </div>
                <!-- end section -->

                <div class="section row">
                    <div class="col-md-3">
                        <label for="zip" class="field prepend-icon">
                            <input type="text" name="zip" id="zip" class="gui-input" placeholder="Zip">
                            <label for="zip" class="field-icon"><i class="fa fa-certificate"></i>
                            </label>
                        </label>
                    </div>
                    <!-- end section -->

                    <div class="col-md-4">
                        <label for="city" class="field prepend-icon">
                            <input type="text" name="city" id="city" class="gui-input" placeholder="City">
                            <label for="city" class="field-icon"><i class="fa fa-building-o"></i>
                            </label>
                        </label>
                    </div>
                    <!-- end section -->

                    <div class="col-md-5">
                        <label for="states" class="field select">
                            <select id="states" name="states">
                                <option value="">Choose state</option>
                                <option value="AL">Alabama</option>
                                <option value="AK">Alaska</option>
                                <option value="AZ">Arizona</option>
                                <option value="AR">Arkansas</option>
                                <option value="CA">California</option>
                                <option value="CO">Colorado</option>
                                <option value="CT">Connecticut</option>
                                <option value="DE">Delaware</option>
                                <option value="DC">District Of Columbia</option>
                                <option value="FL">Florida</option>
                                <option value="GA">Georgia</option>
                                <option value="HI">Hawaii</option>
                                <option value="ID">Idaho</option>
                                <option value="IL">Illinois</option>
                                <option value="IN">Indiana</option>
                                <option value="IA">Iowa</option>
                                <option value="KS">Kansas</option>
                                <option value="KY">Kentucky</option>
                                <option value="LA">Louisiana</option>
                                <option value="ME">Maine</option>
                                <option value="MD">Maryland</option>
                                <option value="MA">Massachusetts</option>
                                <option value="MI">Michigan</option>
                                <option value="MN">Minnesota</option>
                                <option value="MS">Mississippi</option>
                                <option value="MO">Missouri</option>
                                <option value="MT">Montana</option>
                                <option value="NE">Nebraska</option>
                                <option value="NV">Nevada</option>
                                <option value="NH">New Hampshire</option>
                                <option value="NJ">New Jersey</option>
                                <option value="NM">New Mexico</option>
                                <option value="NY">New York</option>
                                <option value="NC">North Carolina</option>
                                <option value="ND">North Dakota</option>
                                <option value="OH">Ohio</option>
                                <option value="OK">Oklahoma</option>
                                <option value="OR">Oregon</option>
                                <option value="PA">Pennsylvania</option>
                                <option value="RI">Rhode Island</option>
                                <option value="SC">South Carolina</option>
                                <option value="SD">South Dakota</option>
                                <option value="TN">Tennessee</option>
                                <option value="TX">Texas</option>
                                <option value="UT">Utah</option>
                                <option value="VT">Vermont</option>
                                <option value="VA">Virginia</option>
                                <option value="WA">Washington</option>
                                <option value="WV">West Virginia</option>
                                <option value="WI">Wisconsin</option>
                                <option value="WY">Wyoming</option>
                            </select>
                            <i class="arrow double"></i>
                        </label>
                    </div>
                    <!-- end .col8 section -->

                </div>
                <!-- end section row section -->

                <div class="section row mbn">
                    <div class="col-sm-8">
                        <label class="field option mt10">
                            <input type="checkbox" name="info" checked>
                            <span class="checkbox"></span>Save Customer
                            <em class="small-text text-muted">- A Random Unique ID will be generated</em>
                        </label>
                    </div>
                    <div class="col-sm-4">
                        <p class="text-right">
                            <button class="btn btn-primary" type="button">Save Order</button>
                        </p>
                    </div>
                </div>
                <!-- end section -->


            </div>
        </div>
        </form:form>
    </div>
</div>