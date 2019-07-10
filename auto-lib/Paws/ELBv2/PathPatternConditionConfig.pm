package Paws::ELBv2::PathPatternConditionConfig;
  use Moose;
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::PathPatternConditionConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ELBv2::PathPatternConditionConfig object:

  $service_obj->Method(Att1 => { Values => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ELBv2::PathPatternConditionConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Values

=head1 DESCRIPTION

Information about a path pattern condition.

=head1 ATTRIBUTES


=head2 Values => ArrayRef[Str|Undef]

  One or more path patterns to compare against the request URL. The
maximum size of each string is 128 characters. The comparison is case
sensitive. The following wildcard characters are supported: * (matches
0 or more characters) and ? (matches exactly 1 character).

If you specify multiple strings, the condition is satisfied if one of
them matches the request URL. The path pattern is compared only to the
path of the URL, not to its query string. To compare against the query
string, use QueryStringConditionConfig.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

