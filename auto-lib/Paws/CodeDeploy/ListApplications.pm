
package Paws::CodeDeploy::ListApplications;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListApplications');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeDeploy::ListApplicationsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::ListApplications - Arguments for method ListApplications on L<Paws::CodeDeploy>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListApplications on the
L<AWS CodeDeploy|Paws::CodeDeploy> service. Use the attributes of this class
as arguments to method ListApplications.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListApplications.

=head1 SYNOPSIS

    my $codedeploy = Paws->service('CodeDeploy');
    my $ListApplicationsOutput = $codedeploy->ListApplications(
      NextToken => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $Applications = $ListApplicationsOutput->Applications;
    my $NextToken    = $ListApplicationsOutput->NextToken;

    # Returns a L<Paws::CodeDeploy::ListApplicationsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codedeploy/ListApplications>

=head1 ATTRIBUTES


=head2 NextToken => Str

An identifier returned from the previous list applications call. It can
be used to return the next set of applications in the list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListApplications in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

