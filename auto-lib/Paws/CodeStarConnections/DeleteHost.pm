
package Paws::CodeStarConnections::DeleteHost;
  use Moose;
  has HostArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteHost');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeStarConnections::DeleteHostOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarConnections::DeleteHost - Arguments for method DeleteHost on L<Paws::CodeStarConnections>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteHost on the
L<AWS CodeStar connections|Paws::CodeStarConnections> service. Use the attributes of this class
as arguments to method DeleteHost.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteHost.

=head1 SYNOPSIS

    my $codestar-connections = Paws->service('CodeStarConnections');
    my $DeleteHostOutput = $codestar -connections->DeleteHost(
      HostArn => 'MyHostArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codestar-connections/DeleteHost>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HostArn => Str

The Amazon Resource Name (ARN) of the host to be deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteHost in L<Paws::CodeStarConnections>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

