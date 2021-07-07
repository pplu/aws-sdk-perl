
package Paws::Proton::UpdateServiceTemplate;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateServiceTemplate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Proton::UpdateServiceTemplateOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton::UpdateServiceTemplate - Arguments for method UpdateServiceTemplate on L<Paws::Proton>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateServiceTemplate on the
L<AWS Proton|Paws::Proton> service. Use the attributes of this class
as arguments to method UpdateServiceTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateServiceTemplate.

=head1 SYNOPSIS

    my $proton = Paws->service('Proton');
    my $UpdateServiceTemplateOutput = $proton->UpdateServiceTemplate(
      Name        => 'MyResourceName',
      Description => 'MyDescription',    # OPTIONAL
      DisplayName => 'MyDisplayName',    # OPTIONAL
    );

    # Results:
    my $ServiceTemplate = $UpdateServiceTemplateOutput->ServiceTemplate;

    # Returns a L<Paws::Proton::UpdateServiceTemplateOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/proton/UpdateServiceTemplate>

=head1 ATTRIBUTES


=head2 Description => Str

A description of the service template update.



=head2 DisplayName => Str

The name of the service template to update as displayed in the
developer interface.



=head2 B<REQUIRED> Name => Str

The name of the service template to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateServiceTemplate in L<Paws::Proton>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

