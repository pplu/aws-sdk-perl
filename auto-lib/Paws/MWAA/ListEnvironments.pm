
package Paws::MWAA::ListEnvironments;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEnvironments');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/environments');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MWAA::ListEnvironmentsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MWAA::ListEnvironments - Arguments for method ListEnvironments on L<Paws::MWAA>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEnvironments on the
L<AmazonMWAA|Paws::MWAA> service. Use the attributes of this class
as arguments to method ListEnvironments.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEnvironments.

=head1 SYNOPSIS

    my $airflow = Paws->service('MWAA');
    my $ListEnvironmentsOutput = $airflow->ListEnvironments(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $Environments = $ListEnvironmentsOutput->Environments;
    my $NextToken    = $ListEnvironmentsOutput->NextToken;

    # Returns a L<Paws::MWAA::ListEnvironmentsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/airflow/ListEnvironments>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to retrieve per page. For example, C<5>
environments per page.



=head2 NextToken => Str

Retrieves the next page of the results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEnvironments in L<Paws::MWAA>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

