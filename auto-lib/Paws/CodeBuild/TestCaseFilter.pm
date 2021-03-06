# Generated by default/object.tt
package Paws::CodeBuild::TestCaseFilter;
  use Moose;
  has Keyword => (is => 'ro', isa => 'Str', request_name => 'keyword', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::TestCaseFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeBuild::TestCaseFilter object:

  $service_obj->Method(Att1 => { Keyword => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeBuild::TestCaseFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->Keyword

=head1 DESCRIPTION

A filter used to return specific types of test cases. In order to pass
the filter, the report must meet all of the filter properties.

=head1 ATTRIBUTES


=head2 Keyword => Str

A keyword that is used to filter on the C<name> or the C<prefix> of the
test cases. Only test cases where the keyword is a substring of the
C<name> or the C<prefix> will be returned.


=head2 Status => Str

The status used to filter test cases. A C<TestCaseFilter> can have one
status. Valid values are:

=over

=item *

C<SUCCEEDED>

=item *

C<FAILED>

=item *

C<ERROR>

=item *

C<SKIPPED>

=item *

C<UNKNOWN>

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

