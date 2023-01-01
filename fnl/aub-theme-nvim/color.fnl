(module aub-theme-nvim.color
  {require {hsl external.hsluv}})


(defn hsl-to-vec
  [[h s l]]
  (let [r (* math.pi (/ h 180))]
    [(* s (math.cos r))
     (* s (math.sin r))
     l]))


(defn vec-to-hsl
  [[x y z]]
  [(* (/ 180 math.pi) (math.atan2 y x))
   (math.sqrt (+ (* x x) (* y y)))
   z])


(defn lerp-vec
  [[sx sy sz] [tx ty tz] l]
  (let [il (- 1 l)]
    [(+ (* sx l) (* tx il))
     (+ (* sy l) (* ty il))
     (+ (* sz l) (* tz il))]))


(defn mix [source-color target-color alpha] 
  (let [source-color (hsl.hex_to_hsluv source-color)
        target-color (hsl.hex_to_hsluv target-color)
        source-vec (hsl-to-vec source-color)
        target-vec (hsl-to-vec target-color)
        return-vec (lerp-vec target-vec source-vec alpha)
        return-color (vec-to-hsl return-vec)
        output (tostring (hsl.hsluv_to_hex return-color))]
    output))


(defn brighten [color percent] 
  (let [hsl-color (hsl.hex_to_hsluv color)
        luminance (- 100 (. hsl-color 3))
        input-luminance (let [mid-luminance (+ (. hsl-color 3)
                                               (* luminance percent))]
                          (if (>= mid-luminance 100) 99.99 mid-luminance))]
    (tset hsl-color 3 input-luminance)
    (let [output (hsl.hsluv_to_hex hsl-color)]
      output)))


(defn hsluv-brighten [tuple percent] 
  (let [hsl-color tuple
        luminance (- 100 (. hsl-color 3))
        input-luminance (let [mid-luminance (* (. hsl-color 3)
                                               (+ 1 percent))]
                          (if (>= mid-luminance 100) 99.99 mid-luminance))]
    (tset hsl-color 3 input-luminance)
    (let [output (hsl.hsluv_to_hex hsl-color)]
      output)))


(defn darken [color percent] 
  (let [hsl-color (hsl.hex_to_hsluv color)
        luminance (- 100 (. hsl-color 3))
        input-luminance (let [mid-luminance (* (. hsl-color 3)
                                               (- 1 percent))]
                          (if (>= mid-luminance 100) 99.99 mid-luminance))]
    (tset hsl-color 3 input-luminance)
    (let [output (hsl.hsluv_to_hex hsl-color)]
      output)))


(defn saturation [color percent] 
  (let [hsl-color (hsl.hex_to_hsluv color)
        saturation (. hsl-color 2)
        input-saturation (let [mid-saturation (+ saturation (* saturation percent))]
                           (if (>= mid-saturation 100) 99.99
                             (<= mid-saturation 0) 0.01
                             mid-saturation))]
    (tset hsl-color 2 input-saturation)
    (let [output (hsl.hsluv_to_hex hsl-color)]
      output)))
