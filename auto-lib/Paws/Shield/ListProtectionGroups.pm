
package Paws::Shield::ListProtectionGroups;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListProtectionGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Shield::ListProtectionGroupsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Shield::ListProtectionGroups - Arguments for method ListProtectionGroups on L<Paws::Shield>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListProtectionGroups on the
L<AWS Shield|Paws::Shield> service. Use the attributes of this class
as arguments to method ListProtectionGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListProtectionGroups.

=head1 SYNOPSIS

    my $shield = Paws->service('Shield');
    my $ListProtectionGroupsResponse = $shield->ListProtectionGroups(
      MaxResults => 1,            # OPTIONAL
      NextToken  => 'MyToken',    # OPTIONAL
    );

    # Results:
    my $NextToken        = $ListProtectionGroupsResponse->NextToken;
    my $ProtectionGroups = $ListProtectionGroupsResponse->ProtectionGroups;

    # Returns a L<Paws::Shield::ListProtectionGroupsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/shield/ListProtectionGroups>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of ProtectionGroup objects to return. If you leave
this blank, Shield Advanced returns the first 20 results.

This is a maximum value. Shield Advanced might return the results in
smaller batches. That is, the number of objects returned could be less
than C<MaxResults>, even if there are still more objects yet to return.
If there are more objects to return, Shield Advanced returns a value in
C<NextToken> that you can use in your next request, to get the next
batch of objects.



=head2 NextToken => Str

The next token value from a previous call to C<ListProtectionGroups>.
Pass null if this is the first call.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListProtectionGroups in L<Paws::Shield>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

