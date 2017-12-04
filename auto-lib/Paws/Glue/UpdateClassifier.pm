
package Paws::Glue::UpdateClassifier;
  use Moose;
  has GrokClassifier => (is => 'ro', isa => 'Paws::Glue::UpdateGrokClassifierRequest');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateClassifier');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::UpdateClassifierResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::UpdateClassifier - Arguments for method UpdateClassifier on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateClassifier on the 
AWS Glue service. Use the attributes of this class
as arguments to method UpdateClassifier.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateClassifier.

As an example:

  $service_obj->UpdateClassifier(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 GrokClassifier => L<Paws::Glue::UpdateGrokClassifierRequest>

A C<GrokClassifier> object with updated fields.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateClassifier in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

