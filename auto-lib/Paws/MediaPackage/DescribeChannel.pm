
package Paws::MediaPackage::DescribeChannel;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeChannel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channels/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaPackage::DescribeChannelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::DescribeChannel - Arguments for method DescribeChannel on L<Paws::MediaPackage>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeChannel on the
L<AWS Elemental MediaPackage|Paws::MediaPackage> service. Use the attributes of this class
as arguments to method DescribeChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeChannel.

=head1 SYNOPSIS

    my $mediapackage = Paws->service('MediaPackage');
    my $DescribeChannelResponse = $mediapackage->DescribeChannel(
      Id => 'My__string',

    );

    # Results:
    my $Arn         = $DescribeChannelResponse->Arn;
    my $Description = $DescribeChannelResponse->Description;
    my $HlsIngest   = $DescribeChannelResponse->HlsIngest;
    my $Id          = $DescribeChannelResponse->Id;

    # Returns a L<Paws::MediaPackage::DescribeChannelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediapackage/DescribeChannel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of a Channel.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeChannel in L<Paws::MediaPackage>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

