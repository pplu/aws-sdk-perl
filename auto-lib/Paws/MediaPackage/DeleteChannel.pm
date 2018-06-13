
package Paws::MediaPackage::DeleteChannel;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteChannel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channels/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaPackage::DeleteChannelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::DeleteChannel - Arguments for method DeleteChannel on L<Paws::MediaPackage>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteChannel on the
L<AWS Elemental MediaPackage|Paws::MediaPackage> service. Use the attributes of this class
as arguments to method DeleteChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteChannel.

=head1 SYNOPSIS

    my $mediapackage = Paws->service('MediaPackage');
    my $DeleteChannelResponse = $mediapackage->DeleteChannel(
      Id => 'My__string',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediapackage/DeleteChannel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the Channel to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteChannel in L<Paws::MediaPackage>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

