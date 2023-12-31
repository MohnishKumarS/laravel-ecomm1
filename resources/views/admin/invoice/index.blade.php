<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Invoice #{{$order->id}}</title>

    <style>
        html,
        body {
            margin: 10px;
            padding: 10px;
            font-family: sans-serif;
        }
        h1,h2,h3,h4,h5,h6,p,span,label {
            font-family: sans-serif;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 0px !important;
        }
        table thead th {
            height: 28px;
            text-align: left;
            font-size: 16px;
            font-family: sans-serif;
        }
        table, th, td {
            border: 1px solid #ddd;
            padding: 8px;
            font-size: 14px;
        }

        .heading {
            font-size: 24px;
            margin-top: 12px;
            margin-bottom: 12px;
            font-family: sans-serif;
        }
        .small-heading {
            font-size: 18px;
            font-family: sans-serif;
        }
        .total-heading {
            font-size: 18px;
            font-weight: 700;
            font-family: sans-serif;
        }
        .order-details tbody tr td:nth-child(1) {
            width: 20%;
        }
        .order-details tbody tr td:nth-child(3) {
            width: 20%;
        }

        .text-start {
            text-align: left;
        }
        .text-end {
            text-align: right;
        }
        .text-center {
            text-align: center;
        }
        .company-data span {
            margin-bottom: 4px;
            display: inline-block;
            font-family: sans-serif;
            font-size: 14px;
            font-weight: 400;
        }
        .no-border {
            border: 1px solid #fff !important;
        }
        .bg-blue {
            background-color: #414ab1;
            color: #fff;
        }
    </style>
</head>
<body>

    <table class="order-details">
        <thead>
            <tr>
                <th width="50%" colspan="2">
                    <h2 class="text-start">Shirt-Inc</h2>
                </th>
                <th width="50%" colspan="2" class="text-end company-data">
                    <span>Invoice Id: #{{$order->id}}</span> <br>
                    <span>Date: {{date('d-M-Y')}}</span> <br>
                    <span>Address: 58, Madukarai main road, Sundarapuram, Coimbatore,
                        Tamil Nadu, India</span> <br>
                        <span>Zip code : 641023</span> <br>
                </th>
            </tr>
            <tr class="bg-blue">
                <th width="50%" colspan="2">Order Details</th>
                <th width="50%" colspan="2">User Details</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Ordered Date :</td>
                <td>{{$order->created_at->format('d-m-Y h:i A')}}</td>

                <td>Full Name:</td>
                <td>{{$order->address->full_name}}</td>
            </tr>
            <tr>
                <td>Tracking Id/No :</td>
                <td>{{$order->tracking_no}}</td>

                <td>Email Id:</td>
                <td>{{Auth::user()->email}}</td>
            </tr>
            <tr>
                <td>Payment Transaction ID :</td>
                <td>{{$order->payment_id}}</td>

                <td>Phone :</td>
                <td>{{$order->address->phone}}</td>
            </tr>
            <tr>
                <td>Payment Mode :</td>
                <td>{{$order->payment_mode}}</td>

                <td>Address :</td>
                <td>{{$order->address->address}}</td>
            </tr>
            <tr>
                <td>Order Status :</td>
                <td>
                    @switch($order->status)
        
                    @case(4)
                    <span class="badge text-bg-success">Completed</span>
                    
                        @break
                        
                    @default
                    <span class="badge text-bg-danger">Pending</span>
                @endswitch
                </td>

                <td>Pin code :</td>
                <td>{{$order->address->pincode}}</td>
            </tr>
        </tbody>
    </table>

    <table>
        <thead>
            <tr>
                <th class="no-border text-start heading" colspan="6">
                    Order Items
                </th>
            </tr>
            <tr class="bg-blue">
                <th>ID</th>
                <th>Product name</th>
                <th>Size</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Total</th>
            </tr>
        </thead>
        <tbody>
            @php
            $i = 1;
            @endphp
            @foreach ($order->orderitem as $item)
            <tr>
                <td width="10%">{{$i++}}</td>
                <td>
                   {{$item->product->name}}
                </td>
                <td>
                    @if ($item->mens_size)
                    (men : {{ $item->mens_size }} &
                        women : {{ $item->womens_size }})
                @else
                    (size : {{ $item->size }})
                @endif
                </td>
                <td width="10%">Rs {{$item->price}}</td>
                <td width="10%">{{$item->quantity}}</td>
                <td width="15%" class="fw-bold">Rs {{$item->price * $item->quantity}}</td>
            </tr>
            @endforeach
        
            <tr>
                <td colspan="5" class="total-heading">Total Amount - <small>Inc. all vat/tax</small> :</td>
                <td colspan="1" class="total-heading">Rs {{$order->total_price}}</td>
            </tr>
        </tbody>
    </table>

    <br>
    <p class="text-center">
        Thank your for shopping with Shirt-Inc
    </p>

</body>
</html>