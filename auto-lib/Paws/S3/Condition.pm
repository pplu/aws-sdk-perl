package Paws::S3::Condition;
  use Moose;
  has HttpErrorCodeReturnedEquals => (is => 'ro', isa => 'Str');
  has KeyPrefixEquals => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::Condition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::Condition object:

  $service_obj->Method(Att1 => { HttpErrorCodeReturnedEquals => $value, ..., KeyPrefixEquals => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::Condition object:

  $result = $service_obj->Method(...);
  $result->Att1->HttpErrorCodeReturnedEquals

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 HttpErrorCodeReturnedEquals => Str

  The HTTP error code when the redirect is applied. In the event of an
error, if the error code equals this value, then the specified redirect
is applied. Required when parent element Condition is specified and
sibling KeyPrefixEquals is not specified. If both are specified, then
both must be true for the redirect to be applied.


=head2 KeyPrefixEquals => Str

  The object key name prefix when the redirect is applied. For example,
to redirect requests for ExamplePage.html, the key prefix will be
ExamplePage.html. To redirect request for all pages with the prefix
docs/, the key prefix will be /docs, which identifies all objects in
the docs/ folder. Required when the parent element Condition is
specified and sibling HttpErrorCodeReturnedEquals is not specified. If
both conditions are specified, both must be true for the redirect to be
applied.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

