# Generated from default/object.tt
package Paws::StepFunctions::Tag;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::StepFunctions::Types qw//;
  has Key => (is => 'ro', isa => Str);
  has Value => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Key' => {
                          'type' => 'Str'
                        },
               'Value' => {
                            'type' => 'Str'
                          }
             },
  'NameInRequest' => {
                       'Value' => 'value',
                       'Key' => 'key'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::Tag

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::StepFunctions::Tag object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::StepFunctions::Tag object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

Tags are key-value pairs that can be associated with Step Functions
state machines and activities.

An array of key-value pairs. For more information, see Using Cost
Allocation Tags
(https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html)
in the I<AWS Billing and Cost Management User Guide>, and Controlling
Access Using IAM Tags
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html).

Tags may only contain Unicode letters, digits, white space, or these
symbols: C<_ . : / = + - @>.

=head1 ATTRIBUTES


=head2 Key => Str

  The key of a tag.


=head2 Value => Str

  The value of a tag.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

