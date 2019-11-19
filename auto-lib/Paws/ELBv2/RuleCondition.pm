# Generated from default/object.tt
package Paws::ELBv2::RuleCondition;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::ELBv2::Types qw/ELBv2_HostHeaderConditionConfig ELBv2_SourceIpConditionConfig ELBv2_PathPatternConditionConfig ELBv2_HttpHeaderConditionConfig ELBv2_HttpRequestMethodConditionConfig ELBv2_QueryStringConditionConfig/;
  has Field => (is => 'ro', isa => Str);
  has HostHeaderConfig => (is => 'ro', isa => ELBv2_HostHeaderConditionConfig);
  has HttpHeaderConfig => (is => 'ro', isa => ELBv2_HttpHeaderConditionConfig);
  has HttpRequestMethodConfig => (is => 'ro', isa => ELBv2_HttpRequestMethodConditionConfig);
  has PathPatternConfig => (is => 'ro', isa => ELBv2_PathPatternConditionConfig);
  has QueryStringConfig => (is => 'ro', isa => ELBv2_QueryStringConditionConfig);
  has SourceIpConfig => (is => 'ro', isa => ELBv2_SourceIpConditionConfig);
  has Values => (is => 'ro', isa => ArrayRef[Str|Undef]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PathPatternConfig' => {
                                        'type' => 'ELBv2_PathPatternConditionConfig',
                                        'class' => 'Paws::ELBv2::PathPatternConditionConfig'
                                      },
               'SourceIpConfig' => {
                                     'type' => 'ELBv2_SourceIpConditionConfig',
                                     'class' => 'Paws::ELBv2::SourceIpConditionConfig'
                                   },
               'HttpHeaderConfig' => {
                                       'type' => 'ELBv2_HttpHeaderConditionConfig',
                                       'class' => 'Paws::ELBv2::HttpHeaderConditionConfig'
                                     },
               'Field' => {
                            'type' => 'Str'
                          },
               'Values' => {
                             'type' => 'ArrayRef[Str|Undef]'
                           },
               'HostHeaderConfig' => {
                                       'class' => 'Paws::ELBv2::HostHeaderConditionConfig',
                                       'type' => 'ELBv2_HostHeaderConditionConfig'
                                     },
               'QueryStringConfig' => {
                                        'class' => 'Paws::ELBv2::QueryStringConditionConfig',
                                        'type' => 'ELBv2_QueryStringConditionConfig'
                                      },
               'HttpRequestMethodConfig' => {
                                              'class' => 'Paws::ELBv2::HttpRequestMethodConditionConfig',
                                              'type' => 'ELBv2_HttpRequestMethodConditionConfig'
                                            }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::RuleCondition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ELBv2::RuleCondition object:

  $service_obj->Method(Att1 => { Field => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ELBv2::RuleCondition object:

  $result = $service_obj->Method(...);
  $result->Att1->Field

=head1 DESCRIPTION

Information about a condition for a rule.

=head1 ATTRIBUTES


=head2 Field => Str

  The field in the HTTP request. The following are the possible values:

=over

=item *

C<http-header>

=item *

C<http-request-method>

=item *

C<host-header>

=item *

C<path-pattern>

=item *

C<query-string>

=item *

C<source-ip>

=back



=head2 HostHeaderConfig => ELBv2_HostHeaderConditionConfig

  Information for a host header condition. Specify only when C<Field> is
C<host-header>.


=head2 HttpHeaderConfig => ELBv2_HttpHeaderConditionConfig

  Information for an HTTP header condition. Specify only when C<Field> is
C<http-header>.


=head2 HttpRequestMethodConfig => ELBv2_HttpRequestMethodConditionConfig

  Information for an HTTP method condition. Specify only when C<Field> is
C<http-request-method>.


=head2 PathPatternConfig => ELBv2_PathPatternConditionConfig

  Information for a path pattern condition. Specify only when C<Field> is
C<path-pattern>.


=head2 QueryStringConfig => ELBv2_QueryStringConditionConfig

  Information for a query string condition. Specify only when C<Field> is
C<query-string>.


=head2 SourceIpConfig => ELBv2_SourceIpConditionConfig

  Information for a source IP condition. Specify only when C<Field> is
C<source-ip>.


=head2 Values => ArrayRef[Str|Undef]

  The condition value. You can use C<Values> if the rule contains only
C<host-header> and C<path-pattern> conditions. Otherwise, you can use
C<HostHeaderConfig> for C<host-header> conditions and
C<PathPatternConfig> for C<path-pattern> conditions.

If C<Field> is C<host-header>, you can specify a single host name (for
example, my.example.com). A host name is case insensitive, can be up to
128 characters in length, and can contain any of the following
characters.

=over

=item *

A-Z, a-z, 0-9

=item *

- .

=item *

* (matches 0 or more characters)

=item *

? (matches exactly 1 character)

=back

If C<Field> is C<path-pattern>, you can specify a single path pattern
(for example, /img/*). A path pattern is case-sensitive, can be up to
128 characters in length, and can contain any of the following
characters.

=over

=item *

A-Z, a-z, 0-9

=item *

_ - . $ / ~ " ' @ : +

=item *

& (using &)

=item *

* (matches 0 or more characters)

=item *

? (matches exactly 1 character)

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

