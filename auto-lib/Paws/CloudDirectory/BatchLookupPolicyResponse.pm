package Paws::CloudDirectory::BatchLookupPolicyResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PolicyToPathList => (is => 'ro', isa => 'ArrayRef[Paws::CloudDirectory::PolicyToPath]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::BatchLookupPolicyResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::BatchLookupPolicyResponse object:

  $service_obj->Method(Att1 => { NextToken => $value, ..., PolicyToPathList => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::BatchLookupPolicyResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->NextToken

=head1 DESCRIPTION

Represents the output of a LookupPolicy response operation.

=head1 ATTRIBUTES


=head2 NextToken => Str

  The pagination token.


=head2 PolicyToPathList => ArrayRef[L<Paws::CloudDirectory::PolicyToPath>]

  Provides list of path to policies. Policies contain C<PolicyId>,
C<ObjectIdentifier>, and C<PolicyType>. For more information, see
Policies
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

