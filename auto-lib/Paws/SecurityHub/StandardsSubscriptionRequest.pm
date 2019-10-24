# Generated from default/object.tt
package Paws::SecurityHub::StandardsSubscriptionRequest;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SecurityHub::Types qw/SecurityHub_StandardsInputParameterMap/;
  has StandardsArn => (is => 'ro', isa => Str, required => 1);
  has StandardsInput => (is => 'ro', isa => SecurityHub_StandardsInputParameterMap);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'StandardsInput' => {
                                     'class' => 'Paws::SecurityHub::StandardsInputParameterMap',
                                     'type' => 'SecurityHub_StandardsInputParameterMap'
                                   },
               'StandardsArn' => {
                                   'type' => 'Str'
                                 }
             },
  'IsRequired' => {
                    'StandardsArn' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::StandardsSubscriptionRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::StandardsSubscriptionRequest object:

  $service_obj->Method(Att1 => { StandardsArn => $value, ..., StandardsInput => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::StandardsSubscriptionRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->StandardsArn

=head1 DESCRIPTION

The standard that you want to enable.

=head1 ATTRIBUTES


=head2 B<REQUIRED> StandardsArn => Str

  The ARN of the standard that you want to enable.

In this release, Security Hub only supports the CIS AWS Foundations
standard.

Its ARN is
C<arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0>.


=head2 StandardsInput => SecurityHub_StandardsInputParameterMap

  A key-value pair of input for the standard.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

