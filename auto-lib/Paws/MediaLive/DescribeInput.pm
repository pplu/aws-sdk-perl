
package Paws::MediaLive::DescribeInput;
  use Moose;
  has InputId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'inputId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInput');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prod/inputs/{inputId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaLive::DescribeInputResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::DescribeInput - Arguments for method DescribeInput on L<Paws::MediaLive>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeInput on the
L<AWS Elemental MediaLive|Paws::MediaLive> service. Use the attributes of this class
as arguments to method DescribeInput.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeInput.

=head1 SYNOPSIS

    my $medialive = Paws->service('MediaLive');
    my $DescribeInputResponse = $medialive->DescribeInput(
      InputId => 'My__string',

    );

    # Results:
    my $Arn               = $DescribeInputResponse->Arn;
    my $AttachedChannels  = $DescribeInputResponse->AttachedChannels;
    my $Destinations      = $DescribeInputResponse->Destinations;
    my $Id                = $DescribeInputResponse->Id;
    my $MediaConnectFlows = $DescribeInputResponse->MediaConnectFlows;
    my $Name              = $DescribeInputResponse->Name;
    my $RoleArn           = $DescribeInputResponse->RoleArn;
    my $SecurityGroups    = $DescribeInputResponse->SecurityGroups;
    my $Sources           = $DescribeInputResponse->Sources;
    my $State             = $DescribeInputResponse->State;
    my $Tags              = $DescribeInputResponse->Tags;
    my $Type              = $DescribeInputResponse->Type;

    # Returns a L<Paws::MediaLive::DescribeInputResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medialive/DescribeInput>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InputId => Str

Unique ID of the input




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeInput in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

