package Paws::SSM::ParameterStringFilter;
  use Moose;
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has Option => (is => 'ro', isa => 'Str');
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::ParameterStringFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::ParameterStringFilter object:

  $service_obj->Method(Att1 => { Key => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::ParameterStringFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

One or more filters. Use a filter to return a more specific list of
results.

The C<ParameterStringFilter> object is used by the DescribeParameters
and GetParametersByPath API actions. However, not all of the pattern
values listed for C<Key> can be used with both actions.

For C<DescribeActions>, all of the listed patterns are valid, with the
exception of C<Label>.

For C<GetParametersByPath>, the following patterns listed for C<Key>
are not valid: C<Name>, C<Path>, and C<Tier>.

For examples of CLI commands demonstrating valid parameter filter
constructions, see Searching for Systems Manager Parameters
(http://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-search.html)
in the I<AWS Systems Manager User Guide>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => Str

  The name of the filter.


=head2 Option => Str

  For all filters used with DescribeParameters, valid options include
C<Equals> and C<BeginsWith>. The C<Name> filter additionally supports
the C<Contains> option. (Exception: For filters using the key C<Path>,
valid options include C<Recursive> and C<OneLevel>.)

For filters used with GetParametersByPath, valid options include
C<Equals> and C<BeginsWith>. (Exception: For filters using the key
C<Label>, the only valid option is C<Equals>.)


=head2 Values => ArrayRef[Str|Undef]

  The value you want to search for.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

