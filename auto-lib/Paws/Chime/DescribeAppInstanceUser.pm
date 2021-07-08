
package Paws::Chime::DescribeAppInstanceUser;
  use Moose;
  has AppInstanceUserArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appInstanceUserArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAppInstanceUser');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/app-instance-users/{appInstanceUserArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chime::DescribeAppInstanceUserResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::DescribeAppInstanceUser - Arguments for method DescribeAppInstanceUser on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAppInstanceUser on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method DescribeAppInstanceUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAppInstanceUser.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $DescribeAppInstanceUserResponse = $chime->DescribeAppInstanceUser(
      AppInstanceUserArn => 'MyChimeArn',

    );

    # Results:
    my $AppInstanceUser = $DescribeAppInstanceUserResponse->AppInstanceUser;

    # Returns a L<Paws::Chime::DescribeAppInstanceUserResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/DescribeAppInstanceUser>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppInstanceUserArn => Str

The ARN of the C<AppInstanceUser>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAppInstanceUser in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

