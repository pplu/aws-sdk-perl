
package Paws::MediaPackage::UpdateChannel;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateChannel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channels/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaPackage::UpdateChannelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::UpdateChannel - Arguments for method UpdateChannel on L<Paws::MediaPackage>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateChannel on the
L<AWS Elemental MediaPackage|Paws::MediaPackage> service. Use the attributes of this class
as arguments to method UpdateChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateChannel.

=head1 SYNOPSIS

    my $mediapackage = Paws->service('MediaPackage');
    my $UpdateChannelResponse = $mediapackage->UpdateChannel(
      Id          => 'My__string',
      Description => 'My__string',    # OPTIONAL
    );

    # Results:
    my $Arn         = $UpdateChannelResponse->Arn;
    my $Description = $UpdateChannelResponse->Description;
    my $HlsIngest   = $UpdateChannelResponse->HlsIngest;
    my $Id          = $UpdateChannelResponse->Id;

    # Returns a L<Paws::MediaPackage::UpdateChannelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediapackage/UpdateChannel>

=head1 ATTRIBUTES


=head2 Description => Str

A short text description of the Channel.



=head2 B<REQUIRED> Id => Str

The ID of the Channel to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateChannel in L<Paws::MediaPackage>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

