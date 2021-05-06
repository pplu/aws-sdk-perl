
package Paws::OpsWorks::DescribeMyUserProfile;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeMyUserProfile');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorks::DescribeMyUserProfileResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::DescribeMyUserProfile - Arguments for method DescribeMyUserProfile on L<Paws::OpsWorks>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeMyUserProfile on the
L<AWS OpsWorks|Paws::OpsWorks> service. Use the attributes of this class
as arguments to method DescribeMyUserProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeMyUserProfile.

=head1 SYNOPSIS

    my $opsworks = Paws->service('OpsWorks');
    my $DescribeMyUserProfileResult = $opsworks->DescribeMyUserProfile();

    # Results:
    my $UserProfile = $DescribeMyUserProfileResult->UserProfile;

    # Returns a L<Paws::OpsWorks::DescribeMyUserProfileResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/opsworks/DescribeMyUserProfile>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeMyUserProfile in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

