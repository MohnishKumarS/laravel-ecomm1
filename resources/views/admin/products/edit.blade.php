@extends('admin.adminlayout')

@section('content')


<div class="card">
    <div class="card-header">
        <h4>Edit Product <i class="material-icons opacity-10">post_add</i></h4>
    </div>
    <div class="card-body">
        <form action="{{url('update-product/'.$data->id)}}" method="post" enctype="multipart/form-data">
            @csrf
            <div class="row">
                <div class="col-md-6 mb-3">
                    <label for="" class="form-label">Category Name</label>
                    <select class="form-select" aria-label="Default select example" name='category_id' required>
                        <option  value="">select a Category</option>

                        @foreach ($category as $cat)
                        <option value="{{$cat->id}}" {{$cat->id == $data->category_id ? 'selected' : ''}}>
                            {{$cat->name}}
                        </option>
                        @endforeach
                       
                    </select>

                </div>
                <div class="col-md-6 mb-3">
                  @php
                    $size = json_decode($data->size_list);
                    $men_size = $data->couple_men_size ? json_decode($data->couple_men_size) : array();
                    $women_size = $data->couple_women_size  ? json_decode($data->couple_women_size) : [];
                      // echo var_dump($women_size);
                  @endphp
                    
                   <div>
                    <label for="" class="form-label">Available Size <small class="text-warning">(except couple section)</small></label>
                   </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="checkbox" name="size[]" value="XS" @if (in_array('XS',$size)) checked @endif>
                        <label class="form-check-label" >XS</label>
                      </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="checkbox" name="size[]" value="S" @if (in_array('S',$size)) checked @endif>
                        
                        <label class="form-check-label" >S</label>
                      </div>
                      <div class="form-check form-check-inline">
                        <input class="form-check-input" type="checkbox" name="size[]" value="M" @if (in_array('M',$size)) checked @endif>
                        <label class="form-check-label">M</label>
                      </div>
                      <div class="form-check form-check-inline">
                        <input class="form-check-input" type="checkbox" name="size[]" value="L" @if (in_array('L',$size)) checked @endif >
                        <label class="form-check-label" >L</label>
                      </div>
                      <div class="form-check form-check-inline">
                        <input class="form-check-input" type="checkbox" name="size[]" value="XL" @if (in_array('XL',$size)) checked @endif >
                        <label class="form-check-label" >XL</label>
                      </div>
                      <div class="form-check form-check-inline">
                        <input class="form-check-input" type="checkbox" name="size[]" value="XXL" @if (in_array('XXL',$size)) checked @endif >
                        <label class="form-check-label" >XXL</label>
                      </div>
                      <div class="form-check form-check-inline">
                        <input class="form-check-input" type="checkbox" name="size[]" value="3XL" @if (in_array('3XL',$size)) checked @endif >
                        <label class="form-check-label" >3XL</label>
                      </div>

                      @if ($errors->has('size'))
                          <div class="text-danger">{{$errors->first('size')}}</div>
                      @endif
                </div>
                <div class="col-md-6 mb-3">
                    <label for="" class="form-label">Name</label>
                    <input type="text" class="form-control" value="{{$data->name}}" name="name"   required>
                </div>
                <div class="col-md-6 mb-3">
                    <label for="" class="form-label">Slug name</label>
                    <input type="text" class="form-control" value="{{$data->slug}}" name="slug"   required>
                </div>
                <div class="col-md-12 mb-3">
                    <label for="" class="form-label">Description</label>
                    <input type="text" class="form-control" value="{{$data->desc}}" name="desc"   required>
                </div>
                <div class="col-md-6 mb-3">
                    <label for="" class="form-label">Original Price</label>
                    <input type="number" class='form-control'  value="{{$data->original_price}}" name="original_p"  required>
                </div>
                <div class="col-md-6 mb-3">
                    <label for="" class="form-label">Selling Price</label>
                    <input type="number" class='form-control' value="{{$data->selling_price}}" name="selling_p"  required>
                </div>
                <div class="col-md-12 mb-3">
                    <label for="" class="form-label">Current Image</label>
                    @php
                        $img = explode(',',$data->image);
                    @endphp
                   <div>
                        @foreach ($img as $val)
                            <img src="{{asset('image/product/'.$val)}}" alt="" width="150" class="border p-1" style="object-fit: cover" loading="lazy">
                        @endforeach
                   </div>
                </div>
                <div class="col-md-6 mb-3">
                    <label for="" class="form-label">Image</label>
                    <input type="file" class="form-control" name="images[]" multiple>
                </div>
                <div class="col-md-6 mb-3">
                    <label for="" class="form-label">Colors</label>
                    <input type="text" class="form-control" value="" name="colors">
                </div>
                <div class="col-md-6 mb-3">
                    <label for="" class="form-label">Quantity</label>
                    <input type="number" class="form-control" value="{{$data->quantity}}" name="quantity" required>
                </div>
                <div class="col-md-6 mb-3">
                  
                    <div>
                     <label for="" class="form-label">Couple's Men Size <small class="text-warning">(only for couple section)</small></label>
                    </div>

                    <div class="form-check form-check-inline">
                      <input class="form-check-input" type="checkbox" name="men_size[]" value="XS" @if (in_array('XS',$men_size)) checked @endif>
                      <label class="form-check-label" >XS</label>
                    </div>
                  <div class="form-check form-check-inline">
                      <input class="form-check-input" type="checkbox" name="men_size[]" value="S" @if (in_array('S',$men_size)) checked @endif>
                      
                      <label class="form-check-label" >S</label>
                    </div>
                    <div class="form-check form-check-inline">
                      <input class="form-check-input" type="checkbox" name="men_size[]" value="M" @if (in_array('M',$men_size)) checked @endif>
                      <label class="form-check-label">M</label>
                    </div>
                    <div class="form-check form-check-inline">
                      <input class="form-check-input" type="checkbox" name="men_size[]" value="L" @if (in_array('L',$men_size)) checked @endif >
                      <label class="form-check-label" >L</label>
                    </div>
                    <div class="form-check form-check-inline">
                      <input class="form-check-input" type="checkbox" name="men_size[]" value="XL" @if (in_array('XL',$men_size)) checked @endif >
                      <label class="form-check-label" >XL</label>
                    </div>
                    <div class="form-check form-check-inline">
                      <input class="form-check-input" type="checkbox" name="men_size[]" value="XXL" @if (in_array('XXL',$men_size)) checked @endif >
                      <label class="form-check-label" >XXL</label>
                    </div>
                    <div class="form-check form-check-inline">
                      <input class="form-check-input" type="checkbox" name="men_size[]" value="3XL" @if (in_array('3XL',$men_size)) checked @endif >
                      <label class="form-check-label" >3XL</label>
                    </div>
 
                 </div>
                 <div class="col-md-6 mb-3">
                    <div>
                     <label for="" class="form-label">Couple's Women Size <small class="text-warning">(only for couple section)</small></label>
                    </div>
                    <div class="form-check form-check-inline">
                      <input class="form-check-input" type="checkbox" name="women_size[]" value="XS" @if (in_array('XS',$women_size)) checked @endif>
                      <label class="form-check-label" >XS</label>
                    </div>
                  <div class="form-check form-check-inline">
                      <input class="form-check-input" type="checkbox" name="women_size[]" value="S" @if (in_array('S',$women_size)) checked @endif>
                      
                      <label class="form-check-label" >S</label>
                    </div>
                    <div class="form-check form-check-inline">
                      <input class="form-check-input" type="checkbox" name="women_size[]" value="M" @if (in_array('M',$women_size)) checked @endif>
                      <label class="form-check-label">M</label>
                    </div>
                    <div class="form-check form-check-inline">
                      <input class="form-check-input" type="checkbox" name="women_size[]" value="L" @if (in_array('L',$women_size)) checked @endif >
                      <label class="form-check-label" >L</label>
                    </div>
                    <div class="form-check form-check-inline">
                      <input class="form-check-input" type="checkbox" name="women_size[]" value="XL" @if (in_array('XL',$women_size)) checked @endif >
                      <label class="form-check-label" >XL</label>
                    </div>
                    <div class="form-check form-check-inline">
                      <input class="form-check-input" type="checkbox" name="women_size[]" value="XXL" @if (in_array('XXL',$women_size)) checked @endif >
                      <label class="form-check-label" >XXL</label>
                    </div>
                    <div class="form-check form-check-inline">
                      <input class="form-check-input" type="checkbox" name="women_size[]" value="3XL" @if (in_array('3XL',$women_size)) checked @endif >
                      <label class="form-check-label" >3XL</label>
                    </div>
 
                 </div>
                 <div class="col-md-6 mb-3">
                    <label for="" class="form-label">Offer Message</label>
                    <input type="text" class="form-control" name="offer_msg"  placeholder="ex:(sale..,new..,offer..,trend...)" {{$data->offer_msg}}>
                </div>
                <div class="col-md-6 mb-3">
                    <label for="" class="form-label">Product Type</label>
                    <select class="form-select"  name='product_type' required>
                        <option selected value="">Choose a product style</option>
                        <option value="Unisex" @if($data->type == "Unisex") selected @endif>Unisex</option>
                        <option value="Mens" @if($data->type == "Mens") selected @endif>Mens</option>
                        <option value="Womens" @if($data->type == "Womens") selected @endif>Womens</option>
                      </select>
                </div>
                <div class="col-md-12 mb-3">
                    <div>
                        <label for="" class="form-label">Action</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="checkbox"  name="status"  {{$data->status == '1'? 'checked' : ''}}>
                        <label class="form-check-label" >popular</label>
                      </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="checkbox"  name="trending"  {{$data->trending == '1'? 'checked' : ''}}>
                        <label class="form-check-label" >Trending</label>
                      </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="checkbox"  name="offer_menu"  {{$data->offer_menu == '1'? 'checked' : ''}}>
                        <label class="form-check-label" >Offer Menu</label>
                      </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="checkbox"  name="freq_bought"  {{$data->freq_bought == '1'? 'checked' : ''}}>
                        <label class="form-check-label" >Frequent Bought</label>
                      </div>
                  
          
                </div>
                
               

                <div class="col-md-12 mb-3  mt-3">
                    <button class="btn btn-primary  w-50 d-block mx-auto" type="submit">Submit</button>
                </div>

            </div>
        </form>
    </div>
</div>
    
@endsection