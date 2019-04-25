
package Paws::Discovery::DisassociateConfigurationItemsFromApplication;
  use Moose;
  has ApplicationConfigurationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationConfigurationId' , required => 1);
  has ConfigurationIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'configurationIds' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateConfigurationItemsFromApplication');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Discovery::DisassociateConfigurationItemsFromApplicationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::DisassociateConfigurationItemsFromApplication - Arguments for method DisassociateConfigurationItemsFromApplication on L<Paws::Discovery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateConfigurationItemsFromApplication on the
L<AWS Application Discovery Service|Paws::Discovery> service. Use the attributes of this class
as arguments to method DisassociateConfigurationItemsFromApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateConfigurationItemsFromApplication.

=head1 SYNOPSIS

    my $discovery = Paws->service('Discovery');
    my $DisassociateConfigurationItemsFromApplicationResponse =
      $discovery->DisassociateConfigurationItemsFromApplication(
      ApplicationConfigurationId => 'MyApplicationId',
      ConfigurationIds           => [ 'MyConfigurationId', ... ],

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/discovery/DisassociateConfigurationItemsFromApplication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationConfigurationId => Str

Configuration ID of an application from which each item is
disassociated.



=head2 B<REQUIRED> ConfigurationIds => ArrayRef[Str|Undef]

Configuration ID of each item to be disassociated from an application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateConfigurationItemsFromApplication in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

