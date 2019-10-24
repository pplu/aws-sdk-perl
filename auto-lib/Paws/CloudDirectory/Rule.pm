# Generated from default/object.tt
package Paws::CloudDirectory::Rule;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudDirectory::Types qw/CloudDirectory_RuleParameterMap/;
  has Parameters => (is => 'ro', isa => CloudDirectory_RuleParameterMap);
  has Type => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Parameters' => {
                                 'class' => 'Paws::CloudDirectory::RuleParameterMap',
                                 'type' => 'CloudDirectory_RuleParameterMap'
                               },
               'Type' => {
                           'type' => 'Str'
                         }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::Rule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::Rule object:

  $service_obj->Method(Att1 => { Parameters => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::Rule object:

  $result = $service_obj->Method(...);
  $result->Att1->Parameters

=head1 DESCRIPTION

Contains an Amazon Resource Name (ARN) and parameters that are
associated with the rule.

=head1 ATTRIBUTES


=head2 Parameters => CloudDirectory_RuleParameterMap

  The minimum and maximum parameters that are associated with the rule.


=head2 Type => Str

  The type of attribute validation rule.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

