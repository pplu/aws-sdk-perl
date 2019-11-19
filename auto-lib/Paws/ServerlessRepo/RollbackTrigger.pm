# Generated from default/object.tt
package Paws::ServerlessRepo::RollbackTrigger;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ServerlessRepo::Types qw//;
  has Arn => (is => 'ro', isa => Str, required => 1);
  has Type => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Arn' => {
                          'type' => 'Str'
                        },
               'Type' => {
                           'type' => 'Str'
                         }
             },
  'IsRequired' => {
                    'Arn' => 1,
                    'Type' => 1
                  },
  'NameInRequest' => {
                       'Arn' => 'arn',
                       'Type' => 'type'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::RollbackTrigger

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServerlessRepo::RollbackTrigger object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServerlessRepo::RollbackTrigger object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

This property corresponds to the I<AWS CloudFormation RollbackTrigger
(https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RollbackTrigger)
> Data Type.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

  This property corresponds to the content of the same name for the I<AWS
CloudFormation RollbackTrigger
(https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RollbackTrigger)
> Data Type.


=head2 B<REQUIRED> Type => Str

  This property corresponds to the content of the same name for the I<AWS
CloudFormation RollbackTrigger
(https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RollbackTrigger)
> Data Type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServerlessRepo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

