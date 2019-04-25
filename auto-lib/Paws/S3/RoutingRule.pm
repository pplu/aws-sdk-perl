package Paws::S3::RoutingRule;
  use Moose;
  has Condition => (is => 'ro', isa => 'Paws::S3::Condition');
  has Redirect => (is => 'ro', isa => 'Paws::S3::Redirect', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::RoutingRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::RoutingRule object:

  $service_obj->Method(Att1 => { Condition => $value, ..., Redirect => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::RoutingRule object:

  $result = $service_obj->Method(...);
  $result->Att1->Condition

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Condition => L<Paws::S3::Condition>

  A container for describing a condition that must be met for the
specified redirect to apply. For example, 1. If request is for pages in
the /docs folder, redirect to the /documents folder. 2. If request
results in HTTP error 4xx, redirect request to another host where you
might process the error.


=head2 B<REQUIRED> Redirect => L<Paws::S3::Redirect>

  Container for redirect information. You can redirect requests to
another host, to another page, or with another protocol. In the event
of an error, you can specify a different error code to return.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

