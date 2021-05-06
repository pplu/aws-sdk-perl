
package Paws::CodeStar::DescribeUserProfile;
  use Moose;
  has UserArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeUserProfile');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeStar::DescribeUserProfileResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::DescribeUserProfile - Arguments for method DescribeUserProfile on L<Paws::CodeStar>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeUserProfile on the
L<AWS CodeStar|Paws::CodeStar> service. Use the attributes of this class
as arguments to method DescribeUserProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeUserProfile.

=head1 SYNOPSIS

    my $codestar = Paws->service('CodeStar');
    my $DescribeUserProfileResult = $codestar->DescribeUserProfile(
      UserArn => 'MyUserArn',

    );

    # Results:
    my $CreatedTimestamp = $DescribeUserProfileResult->CreatedTimestamp;
    my $DisplayName      = $DescribeUserProfileResult->DisplayName;
    my $EmailAddress     = $DescribeUserProfileResult->EmailAddress;
    my $LastModifiedTimestamp =
      $DescribeUserProfileResult->LastModifiedTimestamp;
    my $SshPublicKey = $DescribeUserProfileResult->SshPublicKey;
    my $UserArn      = $DescribeUserProfileResult->UserArn;

    # Returns a L<Paws::CodeStar::DescribeUserProfileResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codestar/DescribeUserProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> UserArn => Str

The Amazon Resource Name (ARN) of the user.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeUserProfile in L<Paws::CodeStar>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

