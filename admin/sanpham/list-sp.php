<div class="list-sp">
    <div class="text-sp">
        <h2>Danh sách Sản Phẩm</h2>
    </div>
    <form action="" method="post">
        <div class="search">
            <input type="text" name="key" id="" placeholder="Search product">
            <select name="category_id" id="">
                <option value="0" selected>Tất cả</option>
                <?php
        foreach ($listall as $list) {
          extract($list);

          echo ' <option value="' . $category_id . '">' . $category_name . '</option>';
        }
        ?>
                <input style="margin-left: 10px;" type="submit" name="search-list" value="search" id="">
            </select>
        </div>
    </form>
    <br>
    <div style="font-weight: 500; font-size: 20px; ; color: black;">
        <?php
    if (isset($message) && ($message != ""))
      echo $message;
    ?>
    </div>
    <br>
    <table border="1px" class="table-sp">
        <tr>
            <th></th>
            <th>ID</th>
            <th>NAME</th>
            <th>SALE</th>
            <th>IMG</th>
            <th>ĐÃ BÁN</th>
            <th>PRICE</th>
            <th>PRICE_DEL</th>
            <th>MÔ TẢ</th>
            <th>LƯỢT XEM</th>
            <th>CATEGORY_ID</th>
            <th></th>
        </tr>
        <?php foreach ($listkey as $pro) : ?>
        <tr>
            <th><input type="checkbox" name="" id="" /></th>
            <th><?= $pro['id'] ?></th>
            <th><?= $pro['product_name'] ?></th>
            <th><?= $pro['sale'] ?></th>
            <th><img src="../views/img/<?= $pro['img'] ?>" alt="" width="100px" height="100px"></th>
            <th><?= $pro['daban'] ?></th>
            <th><?= $pro['price'] ?></th>
            <th><?= $pro['price_del'] ?></th>
            <th><?= $pro['mota'] ?></th>
            <th><?= $pro['luotxem'] ?></th>
            <th>
                <?php
          if ($pro['category_id'] == 1) {
            echo "Áo Sơ Mi";
          } else if ($pro['category_id'] == 2) {
            echo "ÁO Thun";
          } else if ($pro['category_id'] == 3) {
            echo "ÁO Polo";
          } else if ($pro['category_id'] == 4) {
            echo "Quần Âu";
          } else if ($pro['category_id'] == 5) {
            echo "Quần jean";
          } else if ($pro['category_id'] == 6) {
            echo "Quần Kaki";
          } else {
            echo "Quần Short";
          }
          ?>
            </th>
            <th class="sua-xoa">
                <button><a href="index.php?act=editsp&id=<?= $pro['id'] ?>">Sửa</a></button>
                <button><a href="index.php?act=deletesp&id=<?= $pro['id'] ?>">Xóa</a></button>
            </th>
        </tr>
        <?php endforeach ?>
    </table>

    <div class="btn-list">
        <input type="button" value="Chọn tất cả" />
        <input type="button" value="Bỏ chọn tất cả" />
        <input type="button" value="Xóa các mục đã chọn" />
        <a href="index.php?act=addsp"><input type="button" value="Nhập thêm" /></a>
    </div>
</div>