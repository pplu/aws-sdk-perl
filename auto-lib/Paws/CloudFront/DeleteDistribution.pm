
package Paws::CloudFront::DeleteDistribution;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Id' , required => 1);
  has IfMatch => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'If-Match' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDistribution');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2016-09-07/distribution/{Id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::DeleteDistribution - Arguments for method DeleteDistribution on Paws::CloudFront

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDistribution2016_09_07 on the 
Amazon CloudFront service. Use the attributes of this class
as arguments to method DeleteDistribution2016_09_07.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDistribution2016_09_07.

As an example:

  $service_obj->DeleteDistribution2016_09_07(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The distribution id.



=head2 IfMatch => Str

The value of the ETag header you received when you disabled the
distribution. For example: E2QWRUHAPOMQZL.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDistribution2016_09_07 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

