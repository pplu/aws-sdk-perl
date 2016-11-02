
package Paws::EC2::ModifyIdFormat;
  use Moose;
  has Resource => (is => 'ro', isa => 'Str', required => 1);
  has UseLongIds => (is => 'ro', isa => 'Bool', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyIdFormat');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyIdFormat - Arguments for method ModifyIdFormat on Paws::EC2

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyIdFormat on the 
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method ModifyIdFormat.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyIdFormat.

As an example:

  $service_obj->ModifyIdFormat(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Resource => Str

The type of resource: C<instance> | C<reservation> | C<snapshot> |
C<volume>



=head2 B<REQUIRED> UseLongIds => Bool

Indicate whether the resource should use longer IDs (17-character IDs).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyIdFormat in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

