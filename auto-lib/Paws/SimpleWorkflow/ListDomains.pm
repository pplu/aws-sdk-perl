
package Paws::SimpleWorkflow::ListDomains {
  use Moose;
  has maximumPageSize => (is => 'ro', isa => 'Int');
  has nextPageToken => (is => 'ro', isa => 'Str');
  has registrationStatus => (is => 'ro', isa => 'Str', required => 1);
  has reverseOrder => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDomains');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SimpleWorkflow::DomainInfos');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::ListDomains - Arguments for method ListDomains on Paws::SimpleWorkflow

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDomains on the 
Amazon Simple Workflow Service service. Use the attributes of this class
as arguments to method ListDomains.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to ListDomains.

As an example:

  $service_obj->ListDomains(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 maximumPageSize => Int

  

The maximum number of results returned in each page. The default is
100, but the caller can override this value to a page size I<smaller>
than the default. You cannot specify a page size greater than 100. Note
that the number of domains may be less than the maxiumum page size, in
which case, the returned page will have fewer results than the
maximumPageSize specified.










=head2 nextPageToken => Str

  

If on a previous call to this method a C<NextPageToken> was returned,
the result has more than one page. To get the next page of results,
repeat the call with the returned token and all other arguments
unchanged.










=head2 B<REQUIRED> registrationStatus => Str

  

Specifies the registration status of the domains to list.










=head2 reverseOrder => Bool

  

When set to C<true>, returns the results in reverse order. By default
the results are returned in ascending alphabetical order of the C<name>
of the domains.












=head1 SEE ALSO

This class forms part of L<Paws>, and documents parameters for ListDomains in Paws::SimpleWorkflow

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

