
package Paws::Discovery::UpdateApplication;
  use Moose;
  has ConfigurationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'configurationId' , required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApplication');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Discovery::UpdateApplicationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::UpdateApplication - Arguments for method UpdateApplication on L<Paws::Discovery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateApplication on the
L<AWS Application Discovery Service|Paws::Discovery> service. Use the attributes of this class
as arguments to method UpdateApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateApplication.

=head1 SYNOPSIS

    my $discovery = Paws->service('Discovery');
    my $UpdateApplicationResponse = $discovery->UpdateApplication(
      ConfigurationId => 'MyApplicationId',
      Description     => 'MyString',          # OPTIONAL
      Name            => 'MyString',          # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/discovery/UpdateApplication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationId => Str

Configuration ID of the application to be updated.



=head2 Description => Str

New description of the application to be updated.



=head2 Name => Str

New name of the application to be updated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateApplication in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

