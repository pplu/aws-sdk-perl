
package Paws::DataPipeline::QueryObjects {
  use Moose;
  has limit => (is => 'ro', isa => 'Int');
  has marker => (is => 'ro', isa => 'Str');
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);
  has query => (is => 'ro', isa => 'Paws::DataPipeline::Query');
  has sphere => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'QueryObjects');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataPipeline::QueryObjectsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::QueryObjects - Arguments for method QueryObjects on Paws::DataPipeline

=head1 DESCRIPTION

This class represents the parameters used for calling the method QueryObjects on the 
AWS Data Pipeline service. Use the attributes of this class
as arguments to method QueryObjects.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to QueryObjects.

As an example:

  $service_obj->QueryObjects(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 limit => Int

  

Specifies the maximum number of object names that QueryObjects will
return in a single call. The default value is 100.










=head2 marker => Str

  

The starting point for the results to be returned. The first time you
call QueryObjects, this value should be empty. As long as the action
returns C<HasMoreResults> as C<True>, you can call QueryObjects again
and pass the marker value from the response to retrieve the next set of
results.










=head2 B<REQUIRED> pipelineId => Str

  

Identifier of the pipeline to be queried for object names.










=head2 query => Paws::DataPipeline::Query

  

Query that defines the objects to be returned. The Query object can
contain a maximum of ten selectors. The conditions in the query are
limited to top-level String fields in the object. These filters can be
applied to components, instances, and attempts.










=head2 B<REQUIRED> sphere => Str

  

Specifies whether the query applies to components or instances.
Allowable values: C<COMPONENT>, C<INSTANCE>, C<ATTEMPT>.












=head1 SEE ALSO

This class forms part of L<Paws>, and documents parameters for QueryObjects in Paws::DataPipeline

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

