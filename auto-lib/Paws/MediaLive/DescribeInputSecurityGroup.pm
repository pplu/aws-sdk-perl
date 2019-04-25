
package Paws::MediaLive::DescribeInputSecurityGroup;
  use Moose;
  has InputSecurityGroupId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'inputSecurityGroupId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInputSecurityGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prod/inputSecurityGroups/{inputSecurityGroupId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaLive::DescribeInputSecurityGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::DescribeInputSecurityGroup - Arguments for method DescribeInputSecurityGroup on L<Paws::MediaLive>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeInputSecurityGroup on the
L<AWS Elemental MediaLive|Paws::MediaLive> service. Use the attributes of this class
as arguments to method DescribeInputSecurityGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeInputSecurityGroup.

=head1 SYNOPSIS

    my $medialive = Paws->service('MediaLive');
    my $DescribeInputSecurityGroupResponse =
      $medialive->DescribeInputSecurityGroup(
      InputSecurityGroupId => 'My__string',

      );

    # Results:
    my $Arn            = $DescribeInputSecurityGroupResponse->Arn;
    my $Id             = $DescribeInputSecurityGroupResponse->Id;
    my $Inputs         = $DescribeInputSecurityGroupResponse->Inputs;
    my $State          = $DescribeInputSecurityGroupResponse->State;
    my $Tags           = $DescribeInputSecurityGroupResponse->Tags;
    my $WhitelistRules = $DescribeInputSecurityGroupResponse->WhitelistRules;

    # Returns a L<Paws::MediaLive::DescribeInputSecurityGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medialive/DescribeInputSecurityGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InputSecurityGroupId => Str

The id of the Input Security Group to describe




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeInputSecurityGroup in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

