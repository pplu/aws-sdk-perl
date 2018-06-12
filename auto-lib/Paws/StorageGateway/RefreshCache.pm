
package Paws::StorageGateway::RefreshCache;
  use Moose;
  has FileShareARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RefreshCache');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::RefreshCacheOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::RefreshCache - Arguments for method RefreshCache on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RefreshCache on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method RefreshCache.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RefreshCache.

As an example:

  $service_obj->RefreshCache(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/RefreshCache>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FileShareARN => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RefreshCache in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

