
package Paws::SSM::UpdateDocument;
  use Moose;
  has Content => (is => 'ro', isa => 'Str', required => 1);
  has DocumentVersion => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDocument');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::UpdateDocumentResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::UpdateDocument - Arguments for method UpdateDocument on Paws::SSM

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDocument on the 
Amazon Simple Systems Manager (SSM) service. Use the attributes of this class
as arguments to method UpdateDocument.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDocument.

As an example:

  $service_obj->UpdateDocument(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Content => Str

The content in a document that you want to update.



=head2 DocumentVersion => Str

The version of the document that you want to update.



=head2 B<REQUIRED> Name => Str

The name of the document that you want to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDocument in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

