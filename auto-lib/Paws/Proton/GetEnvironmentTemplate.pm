
package Paws::Proton::GetEnvironmentTemplate;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetEnvironmentTemplate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Proton::GetEnvironmentTemplateOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton::GetEnvironmentTemplate - Arguments for method GetEnvironmentTemplate on L<Paws::Proton>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetEnvironmentTemplate on the
L<AWS Proton|Paws::Proton> service. Use the attributes of this class
as arguments to method GetEnvironmentTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetEnvironmentTemplate.

=head1 SYNOPSIS

    my $proton = Paws->service('Proton');
    my $GetEnvironmentTemplateOutput = $proton->GetEnvironmentTemplate(
      Name => 'MyResourceName',

    );

    # Results:
    my $EnvironmentTemplate =
      $GetEnvironmentTemplateOutput->EnvironmentTemplate;

    # Returns a L<Paws::Proton::GetEnvironmentTemplateOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/proton/GetEnvironmentTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the environment template that you want to get the detail
data for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetEnvironmentTemplate in L<Paws::Proton>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

