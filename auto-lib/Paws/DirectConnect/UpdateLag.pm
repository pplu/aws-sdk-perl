
package Paws::DirectConnect::UpdateLag;
  use Moose;
  has LagId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lagId' , required => 1);
  has LagName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lagName' );
  has MinimumLinks => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'minimumLinks' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateLag');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectConnect::Lag');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::UpdateLag - Arguments for method UpdateLag on Paws::DirectConnect

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateLag on the 
AWS Direct Connect service. Use the attributes of this class
as arguments to method UpdateLag.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateLag.

As an example:

  $service_obj->UpdateLag(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> LagId => Str

The ID of the LAG to update.

Example: dxlag-abc123

Default: None



=head2 LagName => Str

The name for the LAG.

Example: "C<3x10G LAG to AWS>"

Default: None



=head2 MinimumLinks => Int

The minimum number of physical connections that must be operational for
the LAG itself to be operational.

Default: None




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateLag in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

