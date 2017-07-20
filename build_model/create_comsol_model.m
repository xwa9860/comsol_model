import com.comsol.model.*
import com.comsol.model.util.*

model = ModelUtil.create('Model');

model.modelPath('D:\diffusion_models\model');
ModelUtil.showProgress(true);
model.label('transient_2d.mph');

model.modelNode.create('mod1');
model.modelNode('mod1').label('FHR');
model.modelNode('mod1').defineLocalCoord(false);
