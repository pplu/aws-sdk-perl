
package Paws::SSOAdmin::ListInstances;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSOAdmin::ListInstancesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::ListInstances - Arguments for method ListInstances on L<Paws::SSOAdmin>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListInstances on the
L<AWS Single Sign-On Admin|Paws::SSOAdmin> service. Use the attributes of this class
as arguments to method ListInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListInstances.

=head1 SYNOPSIS

    my $sso = Paws->service('SSOAdmin');
    my $ListInstancesResponse = $sso->ListInstances(
      MaxResults => 1,            # OPTIONAL
      NextToken  => 'MyToken',    # OPTIONAL
    );

    # Results:
    my $Instances = $ListInstancesResponse->Instances;
    my $NextToken = $ListInstancesResponse->NextToken;

    # Returns a L<Paws::SSOAdmin::ListInstancesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sso/ListInstances>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to display for the instance.



=head2 NextToken => Str

The pagination token for the list API. Initially the value is null. Use
the output of previous API calls to make subsequent calls.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListInstances in L<Paws::SSOAdmin>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

