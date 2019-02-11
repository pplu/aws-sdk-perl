package Paws::MediaStore::CorsRule;
  use Moose;
  has AllowedHeaders => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has AllowedMethods => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has AllowedOrigins => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has ExposeHeaders => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MaxAgeSeconds => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaStore::CorsRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaStore::CorsRule object:

  $service_obj->Method(Att1 => { AllowedHeaders => $value, ..., MaxAgeSeconds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaStore::CorsRule object:

  $result = $service_obj->Method(...);
  $result->Att1->AllowedHeaders

=head1 DESCRIPTION

A rule for a CORS policy. You can add up to 100 rules to a CORS policy.
If more than one rule applies, the service uses the first applicable
rule listed.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AllowedHeaders => ArrayRef[Str|Undef]

  Specifies which headers are allowed in a preflight C<OPTIONS> request
through the C<Access-Control-Request-Headers> header. Each header name
that is specified in C<Access-Control-Request-Headers> must have a
corresponding entry in the rule. Only the headers that were requested
are sent back.

This element can contain only one wildcard character (*).


=head2 AllowedMethods => ArrayRef[Str|Undef]

  Identifies an HTTP method that the origin that is specified in the rule
is allowed to execute.

Each CORS rule must contain at least one C<AllowedMethods> and one
C<AllowedOrigins> element.


=head2 B<REQUIRED> AllowedOrigins => ArrayRef[Str|Undef]

  One or more response headers that you want users to be able to access
from their applications (for example, from a JavaScript
C<XMLHttpRequest> object).

Each CORS rule must have at least one C<AllowedOrigins> element. The
string value can include only one wildcard character (*), for example,
http://*.example.com. Additionally, you can specify only one wildcard
character to allow cross-origin access for all origins.


=head2 ExposeHeaders => ArrayRef[Str|Undef]

  One or more headers in the response that you want users to be able to
access from their applications (for example, from a JavaScript
C<XMLHttpRequest> object).

This element is optional for each rule.


=head2 MaxAgeSeconds => Int

  The time in seconds that your browser caches the preflight response for
the specified resource.

A CORS rule can have only one C<MaxAgeSeconds> element.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaStore>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

