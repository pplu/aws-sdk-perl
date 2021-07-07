
package Paws::Proton::ListEnvironments;
  use Moose;
  has EnvironmentTemplates => (is => 'ro', isa => 'ArrayRef[Paws::Proton::EnvironmentTemplateFilter]', traits => ['NameInRequest'], request_name => 'environmentTemplates' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEnvironments');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Proton::ListEnvironmentsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton::ListEnvironments - Arguments for method ListEnvironments on L<Paws::Proton>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEnvironments on the
L<AWS Proton|Paws::Proton> service. Use the attributes of this class
as arguments to method ListEnvironments.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEnvironments.

=head1 SYNOPSIS

    my $proton = Paws->service('Proton');
    my $ListEnvironmentsOutput = $proton->ListEnvironments(
      EnvironmentTemplates => [
        {
          MajorVersion => 'MyTemplateVersionPart',    # min: 1, max: 20
          TemplateName => 'MyResourceName',           # min: 1, max: 100

        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $Environments = $ListEnvironmentsOutput->Environments;
    my $NextToken    = $ListEnvironmentsOutput->NextToken;

    # Returns a L<Paws::Proton::ListEnvironmentsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/proton/ListEnvironments>

=head1 ATTRIBUTES


=head2 EnvironmentTemplates => ArrayRef[L<Paws::Proton::EnvironmentTemplateFilter>]

An array of the versions of the environment template.



=head2 MaxResults => Int

The maximum number of environments to list.



=head2 NextToken => Str

A token to indicate the location of the next environment in the array
of environments, after the list of environments that was previously
requested.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEnvironments in L<Paws::Proton>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

