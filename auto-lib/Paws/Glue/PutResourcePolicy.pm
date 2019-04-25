
package Paws::Glue::PutResourcePolicy;
  use Moose;
  has PolicyExistsCondition => (is => 'ro', isa => 'Str');
  has PolicyHashCondition => (is => 'ro', isa => 'Str');
  has PolicyInJson => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutResourcePolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::PutResourcePolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::PutResourcePolicy - Arguments for method PutResourcePolicy on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutResourcePolicy on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method PutResourcePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutResourcePolicy.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $PutResourcePolicyResponse = $glue->PutResourcePolicy(
      PolicyInJson          => 'MyPolicyJsonString',
      PolicyExistsCondition => 'MUST_EXIST',           # OPTIONAL
      PolicyHashCondition   => 'MyHashString',         # OPTIONAL
    );

    # Results:
    my $PolicyHash = $PutResourcePolicyResponse->PolicyHash;

    # Returns a L<Paws::Glue::PutResourcePolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/PutResourcePolicy>

=head1 ATTRIBUTES


=head2 PolicyExistsCondition => Str

A value of C<MUST_EXIST> is used to update a policy. A value of
C<NOT_EXIST> is used to create a new policy. If a value of C<NONE> or a
null value is used, the call will not depend on the existence of a
policy.

Valid values are: C<"MUST_EXIST">, C<"NOT_EXIST">, C<"NONE">

=head2 PolicyHashCondition => Str

This is the hash value returned when the previous policy was set using
PutResourcePolicy. Its purpose is to prevent concurrent modifications
of a policy. Do not use this parameter if no previous policy has been
set.



=head2 B<REQUIRED> PolicyInJson => Str

Contains the policy document to set, in JSON format.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutResourcePolicy in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

