package Paws::CloudDirectory::BatchListAttachedIndices;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has TargetReference => (is => 'ro', isa => 'Paws::CloudDirectory::ObjectReference', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::BatchListAttachedIndices

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::BatchListAttachedIndices object:

  $service_obj->Method(Att1 => { MaxResults => $value, ..., TargetReference => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::BatchListAttachedIndices object:

  $result = $service_obj->Method(...);
  $result->Att1->MaxResults

=head1 DESCRIPTION

Lists indices attached to an object inside a BatchRead operation. For
more information, see ListAttachedIndices and
BatchReadRequest$Operations.

=head1 ATTRIBUTES


=head2 MaxResults => Int

  The maximum number of results to retrieve.


=head2 NextToken => Str

  The pagination token.


=head2 B<REQUIRED> TargetReference => L<Paws::CloudDirectory::ObjectReference>

  A reference to the object that has indices attached.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

