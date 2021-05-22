
package Paws::Kendra::DeleteThesaurus;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has IndexId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteThesaurus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::DeleteThesaurus - Arguments for method DeleteThesaurus on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteThesaurus on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method DeleteThesaurus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteThesaurus.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    $kendra->DeleteThesaurus(
      Id      => 'MyThesaurusId',
      IndexId => 'MyIndexId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/DeleteThesaurus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The identifier of the thesaurus to delete.



=head2 B<REQUIRED> IndexId => Str

The identifier of the index associated with the thesaurus to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteThesaurus in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

