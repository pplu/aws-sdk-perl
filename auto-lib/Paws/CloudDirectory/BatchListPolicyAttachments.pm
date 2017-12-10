package Paws::CloudDirectory::BatchListPolicyAttachments;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has PolicyReference => (is => 'ro', isa => 'Paws::CloudDirectory::ObjectReference', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::BatchListPolicyAttachments

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::BatchListPolicyAttachments object:

  $service_obj->Method(Att1 => { MaxResults => $value, ..., PolicyReference => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::BatchListPolicyAttachments object:

  $result = $service_obj->Method(...);
  $result->Att1->MaxResults

=head1 DESCRIPTION

Returns all of the C<ObjectIdentifiers> to which a given policy is
attached inside a BatchRead operation. For more information, see
ListPolicyAttachments and BatchReadRequest$Operations.

=head1 ATTRIBUTES


=head2 MaxResults => Int

  The maximum number of results to retrieve.


=head2 NextToken => Str

  The pagination token.


=head2 B<REQUIRED> PolicyReference => L<Paws::CloudDirectory::ObjectReference>

  The reference that identifies the policy object.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

