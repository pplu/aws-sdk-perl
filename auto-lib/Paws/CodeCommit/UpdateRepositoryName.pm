
package Paws::CodeCommit::UpdateRepositoryName;
  use Moose;
  has NewName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'newName' , required => 1);
  has OldName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'oldName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRepositoryName');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::UpdateRepositoryName - Arguments for method UpdateRepositoryName on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRepositoryName on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method UpdateRepositoryName.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRepositoryName.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    $codecommit->UpdateRepositoryName(
      NewName => 'MyRepositoryName',
      OldName => 'MyRepositoryName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/UpdateRepositoryName>

=head1 ATTRIBUTES


=head2 B<REQUIRED> NewName => Str

The new name for the repository.



=head2 B<REQUIRED> OldName => Str

The existing name of the repository.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRepositoryName in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

