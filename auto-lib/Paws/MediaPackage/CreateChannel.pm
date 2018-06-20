
package Paws::MediaPackage::CreateChannel;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateChannel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channels');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaPackage::CreateChannelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::CreateChannel - Arguments for method CreateChannel on L<Paws::MediaPackage>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateChannel on the
L<AWS Elemental MediaPackage|Paws::MediaPackage> service. Use the attributes of this class
as arguments to method CreateChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateChannel.

=head1 SYNOPSIS

    my $mediapackage = Paws->service('MediaPackage');
    my $CreateChannelResponse = $mediapackage->CreateChannel(
      Id          => 'My__string',
      Description => 'My__string',    # OPTIONAL
    );

    # Results:
    my $Arn         = $CreateChannelResponse->Arn;
    my $Description = $CreateChannelResponse->Description;
    my $HlsIngest   = $CreateChannelResponse->HlsIngest;
    my $Id          = $CreateChannelResponse->Id;

    # Returns a L<Paws::MediaPackage::CreateChannelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediapackage/CreateChannel>

=head1 ATTRIBUTES


=head2 Description => Str

A short text description of the Channel.



=head2 B<REQUIRED> Id => Str

The ID of the Channel. The ID must be unique within the region and it
cannot be changed after a Channel is created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateChannel in L<Paws::MediaPackage>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

