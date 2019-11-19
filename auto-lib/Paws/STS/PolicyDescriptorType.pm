# Generated from default/object.tt
package Paws::STS::PolicyDescriptorType;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::STS::Types qw//;
  has Arn => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Arn' => 'arn'
                     },
  'types' => {
               'Arn' => {
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

Paws::STS::PolicyDescriptorType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::STS::PolicyDescriptorType object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Arn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::STS::PolicyDescriptorType object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

A reference to the IAM managed policy that is passed as a session
policy for a role session or a federated user session.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the IAM managed policy to use as a
session policy for the role. For more information about ARNs, see
Amazon Resource Names (ARNs) and AWS Service Namespaces
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<AWS General Reference>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::STS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

