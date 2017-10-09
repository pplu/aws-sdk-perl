
package Paws::Glue::CreateClassifier;
  use Moose;
  has GrokClassifier => (is => 'ro', isa => 'Paws::Glue::CreateGrokClassifierRequest');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateClassifier');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::CreateClassifierResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreateClassifier - Arguments for method CreateClassifier on Paws::Glue

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateClassifier on the 
AWS Glue service. Use the attributes of this class
as arguments to method CreateClassifier.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateClassifier.

As an example:

  $service_obj->CreateClassifier(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 GrokClassifier => L<Paws::Glue::CreateGrokClassifierRequest>

A grok classifier to create.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateClassifier in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

