
package Paws::CodeStar::ListTagsForProject;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id' , required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTagsForProject');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeStar::ListTagsForProjectResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::ListTagsForProject - Arguments for method ListTagsForProject on L<Paws::CodeStar>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTagsForProject on the 
L<AWS CodeStar|Paws::CodeStar> service. Use the attributes of this class
as arguments to method ListTagsForProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTagsForProject.

As an example:

  $service_obj->ListTagsForProject(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the project to get tags for.



=head2 MaxResults => Int

Reserved for future use.



=head2 NextToken => Str

Reserved for future use.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTagsForProject in L<Paws::CodeStar>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

